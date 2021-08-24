/**
 * Some documented component
 *
 * @component
 * @example
 * const text = 'some example text'
 * return (
 *   <Documented text={text} />
 * )
 */
const Documented = (props) => {
  const { text } = props
  return (
    <div>{text}</div>
  )
}

Documented.propTypes = {
  /**
   * Text is a text
   */
  text: PropTypes.string.isRequired,
}

export default Documented
