
import sys
import os

PACKAGE_PARENT = '..'
SCRIPT_DIR = os.path.dirname(os.path.realpath(
             os.path.join(os.getcwd(), os.path.expanduser(__file__))))

sys.path.append(os.path.normpath(os.path.join(SCRIPT_DIR, PACKAGE_PARENT)))
import adhrit

def test_welcome_succesful():
    adhrit_test = adhrit.Adhrit()    
    author = 'Abhishek J M ( jmabhishek@gmail.com )'
    asserted_author =  adhrit.__author__
    assert author == asserted_author

if __name__ == '__main__':
    test_welcome_succesful()    


