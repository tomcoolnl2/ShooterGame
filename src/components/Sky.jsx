import React from 'react'
import { skyAndGroundWidth, COLORS } from '../utils/constants'

const Sky = () => {
    const gameHeight = 1200

    return (
        <rect
            fill={COLORS.PRIMARY}
            x={skyAndGroundWidth / -2}
            y={100 - gameHeight}
            width={skyAndGroundWidth}
            height={gameHeight}
        />
    )
}

export default Sky
