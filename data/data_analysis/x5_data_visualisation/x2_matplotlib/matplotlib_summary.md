# Matplotlib Summary

[TOC]

## Line Plots

## Basic Line Plot

```
pythonimport matplotlib.pyplot as plt
import numpy as np

x = np.array([1, 8])
y = np.array([3, 10])
plt.plot(x, y)
plt.show()
```

**Output:** A straight line connecting (1,3) and (8,10)[1](https://www.w3schools.com/python/matplotlib_plotting.asp).

## 2. Markers and Line Styles

## Custom Markers

```
pythonplt.plot([1, 8], [3, 10], 'o')  # Only markers, no line
plt.show()
```

**Output:** Dots at given coordinates[1](https://www.w3schools.com/python/matplotlib_plotting.asp).

## Line and Marker Customization

```
pythonplt.plot([1, 2, 3], [4, 5, 1], marker='o', linestyle='--')
plt.show()
```

**Output:** Dashed line with circular markers at each point[2](https://www.activestate.com/resources/quick-reads/how-to-display-a-plot-in-python/).

## 3. Multiple Lines in One Plot

```
pythonimport numpy as np
x = np.linspace(0, 5, 100)
plt.plot(x, np.sin(x), label='Sine')
plt.plot(x, np.cos(x), label='Cosine')
plt.legend()
plt.show()
```

**Output:** Sine and cosine curves in the same plot, both labeled[3](https://www.datacamp.com/tutorial/line-plots-in-matplotlib-with-python).

## 4. Subplots

## Basic Subplots

```
pythonfig, axs = plt.subplots(2)
axs[0].plot([1, 2, 3], [4, 5, 1])
axs[1].bar([1, 2, 3], [1, 3, 2])
plt.show()
```

**Output:** Two vertically stacked plots: a line plot and a bar chart[4](https://zerotomastery.io/blog/matplotlib-guide-python/).

## Grid of Plots

```
pythonfig, axs = plt.subplots(2, 2)
axs[0, 0].plot(x, x/2)
axs[0, 1].scatter(np.random.random(10), np.random.random(10))
axs[1, 0].bar(['A', 'B', 'C'], [5, 2, 7])
axs[1, 1].hist(np.random.randn(100))
plt.show()
```

**Output:** 2x2 grid: line, scatter, bar, and histogram[4](https://zerotomastery.io/blog/matplotlib-guide-python/).

## 5. Bar Charts

## Vertical Bar Chart

```
pythonplt.bar(['A', 'B', 'C'], [5, 7, 3])
plt.title("Bar Chart Example")
plt.ylabel("Values")
plt.show()
```

**Output:** Three bars labeled A, B, C[5](https://www.geeksforgeeks.org/data-visualization-using-matplotlib/).

## Horizontal Bar Chart

```
pythonplt.barh(['A', 'B', 'C'], [5, 7, 3])
plt.show()
```

**Output:** Horizontal bars from left to right.

## 6. Pie Charts

```
pythonsizes = [15, 30, 45, 10]
labels = ['Frogs', 'Hogs', 'Dogs', 'Logs']
plt.pie(sizes, labels=labels)
plt.show()
```

**Output:** Circle sectioned by proportions, each slice labeled[4](https://zerotomastery.io/blog/matplotlib-guide-python/).

## 7. Scatter Plots

```
pythonx = [2, 4, 6, 8]
y = [1, 3, 5, 7]
plt.scatter(x, y)
plt.show()
```

**Output:** Points scattered at coordinates (2,1), (4,3), etc.[6](https://www.geeksforgeeks.org/python/working-with-images-in-python-using-matplotlib/).

## 8. Histograms

```
pythondata = np.random.normal(0, 1, 1000)
plt.hist(data, bins=30)
plt.show()
```

**Output:** Bars representing frequency distribution of random data[4](https://zerotomastery.io/blog/matplotlib-guide-python/).

## 9. Images

## Displaying an Image

```
pythonimport matplotlib.image as mpimg
img = mpimg.imread('sample.png')
plt.imshow(img)
plt.show()
```

**Output:** The image 'sample.png' displayed inline in the notebook or window[6](https://www.geeksforgeeks.org/python/working-with-images-in-python-using-matplotlib/).

## 10. Customizing Plots

## Titles, Labels, and Grid

```
pythonplt.plot([1,2,3,4])
plt.title("Simple Plot")
plt.xlabel("x label")
plt.ylabel("y label")
plt.grid(True)
plt.show()
```

**Output:** Line plot with a title, labeled axes, and grid lines[7](https://matplotlib.org/2.0.2/examples/pylab_examples/simple_plot.html).

## 11. Logarithmic and Other Axes Scales

```
pythonx = np.linspace(0.01, 10, 100)
y = np.exp(x)
plt.plot(x, y)
plt.yscale('log')  # Set y-axis to logarithmic
plt.title('Log scale')
plt.show()
```

**Output:** Curve plotted with y-axis logarithmic[8](https://matplotlib.org/stable/tutorials/pyplot.html).

## 12. Advanced Plot Types

| Plot Type   | Example                        | Function                                                     |
| ----------- | ------------------------------ | ------------------------------------------------------------ |
| Box Plot    | `plt.boxplot(data)`            | Box, whiskers, outliers[4](https://zerotomastery.io/blog/matplotlib-guide-python/) |
| Violin Plot | `plt.violinplot(data)`         | Distribution plot                                            |
| Error Bar   | `plt.errorbar(x, y, yerr=std)` | y with error intervals                                       |
| Polar Plot  | `plt.polar(theta, r)`          | Polar coordinates                                            |
| 3D Plot     | `ax.plot3D(x, y, z)`           | 3D line[9](https://matplotlib.org/stable/gallery/index.html) |

## 13. Saving a Plot

```
pythonplt.plot([1,2,3,4])
plt.savefig("figure.png")
```

**Output:** File 'figure.png' saved with the plot[7](https://matplotlib.org/2.0.2/examples/pylab_examples/simple_plot.html).

## 14. Working with Multiple Figures and Axes

```
pythonfig1 = plt.figure()
plt.plot([1, 2, 3])
fig2, axs = plt.subplots(1, 2)
axs[0].plot([1, 2, 3], [1, 4, 9])
axs[1].bar([1,2,3],[3,2,5])
plt.show()
```

**Output:** One standalone line figure, and one figure with two subplots (line and bar)[8](https://matplotlib.org/stable/tutorials/pyplot.html)[4](https://zerotomastery.io/blog/matplotlib-guide-python/).

## 15. Further References and Galleries

- **Official Example Gallery:** Explore extensive categorized code samples for nearly every Matplotlib function and plot type (lines, bars, fields, pie, text, colors, 3D, widgets, etc.)[9](https://matplotlib.org/stable/gallery/index.html).
- **Code Samples:** Browse simple to complex scripts for customizing and embedding plots[10](http://scipy-lectures.org/intro/matplotlib/auto_examples/)[11](https://matplotlib.org/3.1.1/gallery/index.html).

This guide covers a broad set of Matplotlib's functions, their typical usages, code patterns, and visual outputs. For more intricate or niche plots, consult the exhaustive official gallery and API reference.

1. https://www.w3schools.com/python/matplotlib_plotting.asp
2. https://www.activestate.com/resources/quick-reads/how-to-display-a-plot-in-python/
3. https://www.datacamp.com/tutorial/line-plots-in-matplotlib-with-python
4. https://zerotomastery.io/blog/matplotlib-guide-python/
5. https://www.geeksforgeeks.org/data-visualization-using-matplotlib/
6. https://www.geeksforgeeks.org/python/working-with-images-in-python-using-matplotlib/
7. https://matplotlib.org/2.0.2/examples/pylab_examples/simple_plot.html
8. https://matplotlib.org/stable/tutorials/pyplot.html
9. https://matplotlib.org/stable/gallery/index.html
10. http://scipy-lectures.org/intro/matplotlib/auto_examples/
11. https://matplotlib.org/3.1.1/gallery/index.html
12. https://matplotlib.org/stable/users/explain/quick_start.html
13. https://sphinx-gallery.github.io/stable/auto_examples/index.html
14. https://realpython.com/python-matplotlib-guide/
15. https://www.w3schools.com/python/matplotlib_pyplot.asp
16. https://www.w3schools.com/python/matplotlib_intro.asp
17. https://www.kaggle.com/code/prashant111/matplotlib-tutorial-for-beginners
18. https://www.freecodecamp.org/news/getting-started-with-matplotlib/
19. https://python-graph-gallery.com/line-chart/
20. https://matplotlib.org/stable/tutorials/images.html