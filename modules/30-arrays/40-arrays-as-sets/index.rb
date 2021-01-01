# frozen_string_literal: true

# BEGIN
const genDiff = (data1, data2) => {
  const keys1 = _.keys(data1);
  const keys2 = _.keys(data2);
  const keys = _.union(keys1, keys2); // https://youtu.be/vkUTX1hruF8?t=929

  const result = {};
  for (const key of keys) {
    if (!_.has(data1, key)) {
      result[key] = 'added';
    } else if (!_.has(data2, key)) {
      result[key] = 'deleted';
    } else if (data1[key] !== data2[key]) {
      result[key] = 'changed';
    } else {
      result[key] = 'unchanged';
    }
  }

  return result;
};
# END
