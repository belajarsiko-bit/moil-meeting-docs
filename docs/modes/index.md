## Operational Modes

### Original Mode
**Purpose:** Full-scope monitoring and situational awareness.

Displays the raw feed from the fisheye camera without de-warping. This mode is essential for seeing the complete, uncropped capture area, ensuring no detail is missed at the periphery.

![Original Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/original_mode.png)

### Discussion Mode
**Purpose:** Interactive team collaboration.

Facilitates dynamic interaction by combining a panoramic overview with zoomed-in views of specific participants. The layout is customizable, allowing users to adjust the number and position of viewports to match the meeting size.

![Discussion Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/disscusion_mode.png)

### Global Mode
**Purpose:** International meetings and large-scale room coverage.

Designed for comprehensive visibility, this mode creates a split-screen layout showing a dual panoramic strip. It provides a flat, "unwrapped" view of the entire room, making remote participants feel as if they are seated at the center of the conference table.

![Global Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/global_mode.png)

### Patrol Mode
**Purpose:** Surveillance and automated presenting.

Automatically pans the view across the panoramic scene from right to left (or vice versa). This "scanning" behavior is ideal for monitoring large spaces or for presentations where the camera needs to dynamically shift focus across a stage.

![Patrol Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/patrol_mode.png)

### Presentation Mode
**Purpose:** Content focus and detail highlighting.

Allows the presenter to lock onto a specific "Anypoint" area. The software de-warps and zooms into this region, providing a clear, distortion-free view of a whiteboard, speaker, or screen, minimizing visual distractions from the rest of the room.

![Presentation Mode](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/presentation_mode.png)

---

## AI Tracking
**Intelligent Participant Detection**

Available across all modes, AI Tracking uses sound localization and motion detection to automatically steer the virtual camera view.

-   **Sound & Motion:** Instantly detects who is speaking or moving.
-   **Auto-Focus:** Adjusts the viewport to center on the active subject.
-   **Toggleable:** Can be enabled/disabled instantly for manual control when needed.

![AI Tracking](https://perseverance-tech-tw.github.io/video-conference-app-release/v2.0/build/html/_images/ai_tracking_on.png)

<div style="background-color: #fff3cd; border-left: 6px solid #ffc107; padding: 15px; color: #856404; border-radius: 4px;">
  <strong>💡 Optimizing Your Experience</strong><br>
  Combine AI Tracking with the appropriate mode:
  <ul>
    <li><strong>Discussion Mode</strong>: To automatically highlight speakers in a panel.</li>
    <li><strong>Presentation Mode</strong>: To follow a lecturer walking across a stage.</li>
  </ul>
</div>