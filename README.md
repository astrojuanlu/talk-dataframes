# Beyond pandas: The great Python dataframe showdown

Talk "Beyond pandas: The great Python dataframe showdown" plus demo Orchest pipelines.

[![Open in Orchest](https://github.com/orchest/orchest-examples/raw/main/imgs/open_in_orchest.svg)](https://cloud.orchest.io/?import_url=https://github.com/astrojuanlu/talk-dataframes/)

Slides: https://nbviewer.org/format/slides/github/astrojuanlu/talk-dataframes/blob/main/slides.ipynb

Support blog posts:

- [The great Python dataframe showdown, part 1: Demystifying Apache Arrow](https://www.orchest.io/blog/the-great-python-dataframe-showdown-part-1-demystifying-apache-arrow)
- [The great Python dataframe showdown, part 2: out-of-core processing with Vaex](https://www.orchest.io/blog/the-great-python-dataframe-showdown-part-2-out-of-core-processing-with-vaex)
- [The great Python dataframe showdown, part 3: Lightning-fast queries with Polars](https://www.orchest.io/blog/the-great-python-dataframe-showdown-part-3-lightning-fast-queries-with-polars)

![Pipeline visualization](https://pviz.orchest.io/?pipeline=https://github.com/astrojuanlu/talk-dataframes/blob/master/main.orchest)

## Slides

To convert the slides:

```
$ jupyter nbconvert slides.ipynb --to slides --template orchest --TemplateExporter.extra_template_basedirs=./share/jupyter/nbconvert/templates
```
