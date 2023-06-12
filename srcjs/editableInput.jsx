import { reactShinyInput } from 'reactR';
import { useState } from 'react';

function editableInputUI({configuration, value, setValue }) {

    const initialValue = configuration.initialValue
    const [InputValue, setInputValue] = useState(initialValue);
    console.log(value)
    const [isEditing, setIsEditing] = useState(false);

    const handleDoubleClick = () => {
      setIsEditing(true);
    };

    const handleBlur = () => {
      setIsEditing(false);
    };

    const handleChange = (event) => {
      setInputValue(event.target.value);
      setValue(event.target.value);
    };

    return (
      <div>
        {isEditing ? (
          <input
            type="text"
            value={InputValue}
            onChange={handleChange}
            onBlur={handleBlur}
            autoFocus
          />
        ) : (
          <span onDoubleClick={handleDoubleClick}>{InputValue}</span>
        )}
      </div>
    );
};

export default function initeditableInputUI(){
   reactShinyInput('.editableInput',
                   'reactstrapTest.editableInput',
                   editableInputUI);
};


