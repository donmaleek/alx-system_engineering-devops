# Include the python module
include python

# Define the specific versions of Flask and Werkzeug
$flask_version = '2.1.0'
$werkzeug_version = '2.1.1'

# Ensure Flask is installed with the specified version
python::pip { 'flask':
  ensure    => $flask_version,
  provider  => 'pip3',
}

# Ensure Werkzeug is installed with the specified version
python::pip { 'werkzeug':
  ensure    => $werkzeug_version,
  provider  => 'pip3',
}

