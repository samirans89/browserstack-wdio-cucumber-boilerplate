/**
 * Open the given URL
 * @param  {String}   query The query to type
 */
export default (query) => {
    /**
     * The query to type
     * @type {String}
     */
    $('[name="q"]').setValue(query);
};
