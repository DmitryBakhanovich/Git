CREATE OR REPLACE PACKAGE BODY pkg_tpl_generic
AS
   /***************************************************************************/
   FUNCTION check_foobar ( p_a            IN VARCHAR2
                         , p_b            IN NUMBER )
      RETURN BOOLEAN
   IS
   -- local variables go here
   BEGIN
      -- check parameters
      IF p_a IS NOT NULL THEN
         RETURN TRUE;
      ELSE
         RETURN FALSE;
      END IF;
   -- use at least a generic exception
   -- handler if your functions has
   -- to perform finalization steps
   -- in case of expected or unexpeced
   -- errors
   EXCEPTION
      WHEN OTHERS THEN
         -- do you cleanup here
         RAISE;
   END check_foobar;
END pkg_tpl_generic;
/