# frozen_string_literal: true

# BEGIN
const getMenCountByYear = (users) => {
  const men = users.filter(({ gender }) => gender === 'male');

  const years = men.map(({ birthday }) => birthday.slice(0, 4));

  return years.reduce((acc, year) => {
    const count = _.get(acc, year, 0) + 1;
    return { ...acc, [year]: count };
  }, {});
};
# END
