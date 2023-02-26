\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal}[2022/09/09 Hainan Normal University Bachelor Thesis Proposal class, v0.0.1, created by xiaochen]


% overleaf
\newif\ifoverleaf\overleaffalse
\DeclareOption{overleaf}{\overleaftrue}
\ProcessOptions\relax


% 加载ctexart文档类
\LoadClass[a4paper,zihao=-4,fontset=none]{ctexart}
% 书签
\RequirePackage[bookmarksnumbered,hidelinks]{hyperref}
% URL自动断行
\RequirePackage{xurl}
% 绘制边框
\RequirePackage[most]{tcolorbox}
% 复选框符号
\RequirePackage{stmaryrd}
% 对勾符号
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
% 增强表格
\RequirePackage{array}
% 表格
\RequirePackage{tabularx}
% 自定义宽度表格横线
\RequirePackage{booktabs}
% 条件判断
\RequirePackage{xifthen}
% 带圈标号
\RequirePackage{pifont}
% 页脚
\RequirePackage{fancyhdr}
\pagestyle{plain}

% 绘制外框
\RequirePackage{fancybox}

% 行号
\RequirePackage{lineno}
% 下划线
\RequirePackage{xeCJKfntef}
% 页面大小
\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm,footskip=1cm,headsep=0cm,headheight=0cm]{geometry}
% 自定义环境
\RequirePackage{environ}
% 参考文献引用
\RequirePackage[sort&compress,square,super,comma]{natbib}
\RequirePackage{gbt7714}
\@ifpackagelater{gbt7714}{2020/03/04}
  {\PassOptionsToPackage{numbers}{natbib}}
  {\PassOptionsToPackage{numbers}{gbt7714}}
\newcommand\ckwx{}
\@ifpackagelater{gbt7714}{2020/03/04}
  {\renewcommand\ckwx{\bibliographystyle{gbt7714-numerical}}}
  {}
\setlength{\bibsep}{0pt}
% 签名图片
\RequirePackage{graphicx}
\graphicspath{{figures/}{figures/sign/}}
% 浮动标题
\RequirePackage[labelsep=quad]{caption}
\setlength{\abovecaptionskip}{6bp}
\setlength{\belowcaptionskip}{6bp}
\renewcommand{\captionfont}{\zihao{5}}
% 自动空格
\RequirePackage{xspace}
\xspaceaddexceptions{。？！，、；：“”‘’—….－-～·《》<>＿}

% 交叉引用
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\newcommand{\figureref}[1]{图\xspace\ref{#1}\xspace}
\newcommand{\tableref}[1]{表\xspace\ref{#1}\xspace}
\newcommand{\equationref}[1]{公式(\ref{#1})}

% 定义复选框
\newcommand\tpboxempty{\makebox[1em][l]{$\boxempty$}}
\newcommand\tpboxcheck{\makebox[1em][l]{\makebox[1pt][l]{$\boxempty$}$\checkmark$}}

\NewEnviron{tpfigure}{
  \begin{minipage}{\textwidth}
  \vspace*{6bp}
  \centering
  \BODY
  \end{minipage}
}

\NewEnviron{tptable}{
  \begin{minipage}{\textwidth}
  \centering
  \zihao{5}
  \BODY
  \vspace*{6bp}
  \end{minipage}
}

% 设置PDF元数据
\BeforeBeginEnvironment{document}{
  \hypersetup{
    pdftitle={{\hainnu@organization}{\hainnu@type}},
    pdfauthor={\hainnu@author},
    pdfsubject={{\hainnu@organization}{\hainnu@purpose}{\hainnu@type}开题报告表}
  }
}

% 插入签名图片
\newcommand\sign[1]{\includegraphics[height=1.5em,keepaspectratio]{#1}\quad}
\newcommand\emptysign{\makebox[6em]{}}
% 定义签名命令

\newcommand\supervisorSign{}
\newcommand\leaderSign{}

% 定义手写日期命令

\newcommand\supervisorSignDate{年\qquad 月\qquad 日}
\newcommand\leaderSignDate{年\qquad 月\qquad 日}

% 配置字体
% 自定义加粗加斜程度
\newcommand\FakeBoldValue{3}
\newcommand\FakeSlantValue{0.2}
\ifoverleaf
  % 配置默认英文字体
  \setmainfont{times.ttf}
    [Path=fonts/,
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf,
    BoldItalicFont=timesbi.ttf]
  % 配置默认中文字体
  \setCJKmainfont{SimSun.ttc}
    [Path=fonts/,
    BoldFont={SimSun.ttc},BoldFeatures={FakeBold=\FakeBoldValue},
    SlantedFont={SimSun.ttc},SlantedFeatures={FakeSlant=\FakeSlantValue},
    BoldSlantedFont={SimSun.ttc},BoldSlantedFeatures={FakeBold=\FakeBoldValue,FakeSlant=\FakeSlantValue},
    ItalicFont={simkai.ttf},
    BoldItalicFont={simkai.ttf},BoldItalicFeatures={FakeBold=\FakeBoldValue}]
  % 定义黑体字体
  \newCJKfontfamily\heiti{simhei.ttf}[Path=fonts/,BoldFont={simhei.ttf},BoldFeatures={FakeBold=\FakeBoldValue}]
\else
  % 配置默认英文字体
  \setmainfont{Times New Roman}
  % 配置默认中文字体
  \setCJKmainfont{SimSun}[
    BoldFont={SimSun},BoldFeatures={FakeBold=\FakeBoldValue},
    SlantedFont={SimSun},SlantedFeatures={FakeSlant=\FakeSlantValue},
    BoldSlantedFont={SimSun},BoldSlantedFeatures={FakeBold=\FakeBoldValue,FakeSlant=\FakeSlantValue},
    ItalicFont={KaiTi},
    BoldItalicFont={KaiTi},BoldItalicFeatures={FakeBold=\FakeBoldValue}
    ]
  % 定义黑体字体
  \newCJKfontfamily\heiti{SimHei}[BoldFont={SimHei},BoldFeatures={FakeBold=\FakeBoldValue}]

\fi

% 设置各级标题样式
\ctexset{
  section={
    name={,、},
    number={\chinese{section}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    beforeskip={2pt plus 0pt minus 0pt},
    afterskip={3pt plus 0pt minus 0pt}
  }
}
\ctexset{
  subsection={
    name={（,）},
    number={\chinese{subsection}},
    format={\raggedright\bfseries\zihao{-4}},
    aftername={},
    titleformat={},
    beforeskip={8pt plus 0pt minus 0pt},
    afterskip={0pt plus 0pt minus 0pt}
  }
}
\ctexset{
	subsubsection={
		name={,},
		number={\arabic{subsubsection}},
		format={\raggedright\bfseries\zihao{-4}},
		aftername={.~~},
		titleformat={},
		beforeskip={8pt plus 0pt minus 0pt},
		afterskip={0pt plus 0pt minus 0pt},
		indent={1em}
	}
}

% 设置下划线粗细
\newcommand\ulthickness{1pt}
% 自定义固定长度下划线命令
\newcommand\valueWithUL[2]{\CJKunderline[thickness=\ulthickness]{\makebox[#1]{#2}}}


\RequirePackage{xparse}
\RequirePackage{xkeyval, kvsetkeys}
\NewDocumentCommand\hainnu@define@key{m}{%
	\csdef{hainnu@set@#1}##1{\csdef{hainnu@#1}{##1}}
	\define@key{hainnu}{#1}{\csuse{hainnu@set@#1}{##1}}}
\NewDocumentCommand{\hainnu@setkeys}{m}{\kvsetkeys{hainnu}{#1}}
\let\hainnuset\hainnu@setkeys
% -- keys in Chinese
\hainnu@define@key{organization}
\hainnu@define@key{schoolcode}
\hainnu@define@key{classifier}
\hainnu@define@key{studentid}
\hainnu@define@key{secretlevel}
\hainnu@define@key{author}
\hainnu@define@key{major}
\hainnu@define@key{department}
\hainnu@define@key{class}
\hainnu@define@key{supervisor}
\hainnu@define@key{supervisorB}
\hainnu@define@key{acadetitle}
\hainnu@define@key{acadetitleB}
\hainnu@define@key{primarydisc}
\hainnu@define@key{secndrydisc}
\hainnu@define@key{profesfield}
\hainnu@define@key{researchdir}
\hainnu@define@key{degreelevel}
\hainnu@define@key{degreetype}
\hainnu@define@key{submitdate}
\hainnu@define@key{title}
\hainnu@define@key{corresaddr}
\hainnu@define@key{type}
\hainnu@define@key{purpose}
% -- keys in English
\hainnu@define@key{eauthor}
\hainnu@define@key{etitle}
\hainnu@define@key{edegreelevel}
\hainnu@define@key{esupervisor}
\hainnu@define@key{eacadetitle}
\hainnu@define@key{esupervisorB}
\hainnu@define@key{eacadetitleB}
\hainnu@define@key{ethesistype}
\hainnu@define@key{ecorresaddr}
%\hainnu@define@key{researchtype}


% 定义封面和扉页
\AtBeginDocument{
\begin{titlepage}
\vspace{66pt}
% 标题
\begin{center}
\zihao{3}
\bfseries{
   \zihao{1}{\heiti \hainnu@organization}\\
   \vspace{1.5cm}

%   \includegraphics[width=2.5cm]{logoimage/hnulogo.png}

 	\vspace{1.5cm}
 	{\heiti \hainnu@degreelevel\hainnu@purpose\hainnu@type 开题报告表}
 }
\end{center}
\vspace{2cm}

% 论文题目
\begin{center}
	\zihao{-2}\hainnu@title
\end{center}

%个人信息
  \vspace{144pt}
  \begin{center}
  	\zihao{3}\heiti \bfseries
	\begin{tabular}{@{}p{4em}@{：}p{10em}@{}}
	\makebox[4em][s]{学院} & \CJKunderline{\makebox[10em][c]{\hainnu@department}\hfill\mbox{}}\\
	\makebox[4em][s]{专业} & \CJKunderline{\makebox[10em][c]{\hainnu@major}\hfill\mbox{}} \\
	\makebox[4em][s]{学生姓名} & \CJKunderline{\makebox[10em][c]{\hainnu@author}\hfill\mbox{}} \\
	\makebox[4em][s]{学号} & \CJKunderline{\makebox[10em][c]{\hainnu@studentid}\hfill\mbox{}} \\
	\makebox[4em][s]{指导教师} & \CJKunderline{\makebox[10em][c]{\hainnu@supervisor~~\hainnu@acadetitle}\hfill\mbox{}}\\
	\end{tabular}
  \end{center}
  \vspace{40pt}
  \begin{center}
  \zihao{3}\bfseries
  填表时间: \hspace{3em}\hainnu@submitdate
  \end{center}


  \newpage

\vspace{5cm}
  \thispagestyle{empty}

\noindent {\zihao{4} 填表注意事项:}
\begin{enumerate}
\item 本科生毕业设计(论文)的开题答辩应当在第4学年第7学期规定的时间节点完成, 但是选题与相关的准备工作可以在大三或大二开始。
\item 本表由学生在指导教师指导下填写。指导教师在学生填写后，应在本表相应栏目里填写意见并确认签字，有明确的“同意参加开题答辩”意见之后学生方可参加现场或在线开题答辩。
\item 学生应执行本表撰写毕业论文，不得作内容框架上的实质性改变。
\item 本表是信息科学技术学院设计的{\LaTeX{}}模板, 主要供信息科学技术学院的各个专业使用, 欢迎其它学院的毕业生选用。
\item 签名原则上只允许手写签名，仅当发生疫情等特殊情况只能进行在线答辩或审阅时才可以使用电子签名。
\item 本表经过审核签字确认后由学院盖章备案保存。
\end{enumerate}
  \end{titlepage}

  \newpage
  	\fancypage{% 边框绘制
  	\setlength{\fboxsep}{6pt}%
  	\setlength{\fboxrule}{0.5pt}%
  	\setlength{\shadowsize}{0pt}%
  	\shadowbox}{}
}

% 定义边框边距和线宽
\newlength\boxmargin
\setlength{\boxmargin}{5pt}
\newlength\boxrule
\setlength{\boxrule}{1pt}

\newcommand{\ResearchType}[1]{ %研究类型
	\def\HainnuResearchType{#1}
		\vspace*{-1.9em}\hspace*{10em}
		\ifthenelse{\equal{\HainnuResearchType}{基础研究}}{\tpboxcheck}{\tpboxempty} 基础研究\qquad
		\ifthenelse{\equal{\HainnuResearchType}{应用研究}}{\tpboxcheck}{\tpboxempty} 应用研究\qquad \ifthenelse{\equal{\HainnuResearchType}{应用理论研究}}{\tpboxcheck}{\tpboxempty} 应用理论研究
}

\newcommand{\SectionEndLine}{
\par\vskip -0.4cm
\makebox[0.89\textwidth]{\rule{1.025\textwidth}{0.5pt}}
}