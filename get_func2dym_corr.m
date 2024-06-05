clc;clear all;close all
%%
load Base_func_seg.mat
base_within16 = within_module16';
base_across16 = across_module16';
base_func_seg16 = functional_seg16';
a = base_within16';
b = base_across16';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
base16_pval = min(stats.pvals);
base16_tval = stats.tvals;
%%

base_within25 = within_module25';
base_across25 = across_module25';
base_func_seg25 = functional_seg25';

a = base_within25';
b = base_across25';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
base25_pval = min(stats.pvals);
base25_tval = stats.tvals;

base_within34 = within_module34';
base_across34 = across_module34';
base_func_seg34 = functional_seg34';

a = base_within34';
b = base_across34';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
base34_pval = min(stats.pvals);
base34_tval = stats.tvals;
%%
load FRO_func_seg.mat
F_within16 = within_module16(:,2);
F_across16 = across_module16(:,2);
F_func_seg16 = functional_seg16(:,2);

a = F_within16';
b = F_across16';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
F16_pval = min(stats.pvals);
F16_tval = stats.tvals;

F_within25 = within_module25(:,2);
F_across25 = across_module25(:,2);
F_func_seg25 = functional_seg25(:,2);

a = F_within25';
b = F_across25';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
F25_pval = min(stats.pvals);
F25_tval = stats.tvals;

F_within34 = within_module34(:,2);
F_across34 = across_module34(:,2);
F_func_seg34 = functional_seg34(:,2);

a = F_within34';
b = F_across34';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
F34_pval = min(stats.pvals);
F34_tval = stats.tvals;
%%
load OCC_func_seg.mat
O_within16 = within_module16(:,2);
O_across16 = across_module16(:,2);
O_func_seg16 = functional_seg16(:,2);

a = O_within16';
b = O_across16';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
O16_pval = min(stats.pvals);
O16_tval = stats.tvals;

O_within25 = within_module25(:,2);
O_across25 = across_module25(:,2);
O_func_seg25 = functional_seg25(:,2);

a = O_within25';
b = O_across25';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
O25_pval = min(stats.pvals);
O25_tval = stats.tvals;

O_within34 = within_module34(:,2);
O_across34 = across_module34(:,2);
O_func_seg34 = functional_seg34(:,2);

a = O_within34';
b = O_across34';
stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
O34_pval = min(stats.pvals);
O34_tval = stats.tvals;
%%
%     volp = violinplot([base_within16 base_across16 F_within16 F_across16 O_within16 O_across16]);
%     set(gca, 'XTick', 1:6);
%     set(gca,'FontName','Helvetica','FontSize',20);
%     ylim([-0.25,0.3]);
%     volp(1, 1).ViolinPlot.LineWidth = 0.5;
%     volp(1, 2).ViolinPlot.LineWidth = 0.5;
%     volp(1, 3).ViolinPlot.LineWidth = 0.5;
%     volp(1, 4).ViolinPlot.LineWidth = 0.5;
%     volp(1, 5).ViolinPlot.LineWidth = 0.5;
%     volp(1, 6).ViolinPlot.LineWidth = 0.5;
%     
%     volp(1, 1).ViolinPlot.FaceAlpha = 0.5;
%     volp(1, 2).ViolinPlot.FaceAlpha = 0.5;
%     volp(1, 3).ViolinPlot.FaceAlpha = 0.5;
%     volp(1, 4).ViolinPlot.FaceAlpha = 0.5;
%     volp(1, 5).ViolinPlot.FaceAlpha = 0.5;
%     volp(1, 6).ViolinPlot.FaceAlpha = 0.5;
%     
%     volp(1, 1).ViolinPlot.EdgeColor = [222 222 222]./255;
%     volp(1, 2).ViolinPlot.EdgeColor = [222 222 222]./255;
%     volp(1, 3).ViolinPlot.EdgeColor = [222 222 222]./255;
%     volp(1, 4).ViolinPlot.EdgeColor = [222 222 222]./255;
%     volp(1, 5).ViolinPlot.EdgeColor = [222 222 222]./255;
%     volp(1, 6).ViolinPlot.EdgeColor = [222 222 222]./255;
%     
%     volp(1, 1).ViolinPlot.FaceColor = [129 129 129]./255;
%     volp(1, 2).ViolinPlot.FaceColor = [129 129 129]./255;
%     volp(1, 3).ViolinPlot.FaceColor = [40 154 215]./255;
%     volp(1, 4).ViolinPlot.FaceColor = [40 154 215]./255;
%     volp(1, 5).ViolinPlot.FaceColor = [223 34 101]./255;
%     volp(1, 6).ViolinPlot.FaceColor = [223 34 101]./255;
%     
%     volp(1, 1).ScatterPlot.MarkerFaceColor = [129 129 129]./255;
%     volp(1, 2).ScatterPlot.MarkerFaceColor = [129 129 129]./255;
%     volp(1, 3).ScatterPlot.MarkerFaceColor = [40 154 215]./255;
%     volp(1, 4).ScatterPlot.MarkerFaceColor = [40 154 215]./255;
%     volp(1, 5).ScatterPlot.MarkerFaceColor = [223 34 101]./255;
%     volp(1, 6).ScatterPlot.MarkerFaceColor = [223 34 101]./255;
%     
%     volp(1, 1).ViolinPlot.Parent.XLim = [0.3 6.7];
%     volp(1, 1).ViolinPlot.Parent.XColor = [0 0 0];
%     volp(1, 1).ViolinPlot.Parent.YColor = [0 0 0];
%     volp(1, 1).ViolinPlot.Parent.LineWidth = 1;
%     volp(1, 1).ViolinPlot.Parent.FontSize = 20;
%     %volp(1, 1).ViolinPlot.Parent.Parent.Position = [90 204 974 662];
%     volp(1, 1).ViolinPlot.Parent.YTick = [-0.2 -0.1 0 0.1 0.2];

%% functional segregation conparison

%     a = base_func_seg16;
%     g1 = repmat({'a'},size(a));
%     b = F_func_seg16 ;
%     g2 = repmat({'b'},size(b));
%     c = O_func_seg16;
%     g3 = repmat({'c'},size(c));
%     data_func_seg = [a;b;c];
%     group =  [g1;g2;g3];
%    % [p16,table16,stats16] = kruskalwallis(data_func_seg,group);
%     [p16,table16,stats16] = anova1(data_func_seg,group);
%     [cc16,m,h,gnames] = multcompare(stats16,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%     
%     a = base_func_seg25;
%     g1 = repmat({'a'},size(a));
%     b = F_func_seg25 ;
%     g2 = repmat({'b'},size(b));
%     c = O_func_seg25;
%     g3 = repmat({'c'},size(c));
%     data_func_seg = [a;b;c];
%     group =  [g1;g2;g3];
%     %[p25,table25,stats25] = kruskalwallis(data_func_seg,group);
%     [p25,table25,stats25] = anova1(data_func_seg,group);
%     [cc25,m,h,gnames] = multcompare(stats25,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%     
%     
%     a = base_func_seg34;
%     g1 = repmat({'a'},size(a));
%     b = F_func_seg34 ;
%     g2 = repmat({'b'},size(b));
%     c = O_func_seg34;
%     g3 = repmat({'c'},size(c));
%     data_func_seg = [a;b;c];
%     group =  [g1;g2;g3];
% %     [p34,table34,stats34] = kruskalwallis(data_func_seg,group);
%     [p34,table34,stats34] = anova1(data_func_seg,group);
%     [cc34,m,h,gnames] = multcompare(stats34,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%     
%      a = base_within16;
%     g1 = repmat({'a'},size(a));
%     b = F_within16 ;
%     g2 = repmat({'b'},size(b));
%     c = O_within16;
%     g3 = repmat({'c'},size(c));
%     data_within = [a;b;c];
%     group =  [g1;g2;g3];
%    % [p16,table16,stats16] = kruskalwallis(data_func_seg,group);
%     [p16w,table16w,stats16w] = anova1(data_within,group);
%     [cc16w,m,h,gnames] = multcompare(stats16w,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%     
%     a = base_within25;
%     g1 = repmat({'a'},size(a));
%     b = F_within25 ;
%     g2 = repmat({'b'},size(b));
%     c = O_within25;
%     g3 = repmat({'c'},size(c));
%     data_within = [a;b;c];
%     group =  [g1;g2;g3];
%     %[p25,table25,stats25] = kruskalwallis(data_func_seg,group);
%     [p25w,table25w,stats25w] = anova1(data_within,group);
%     [cc25w,m,h,gnames] = multcompare(stats25w,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%     
%     
%     a = base_within34;
%     g1 = repmat({'a'},size(a));
%     b = F_within34 ;
%     g2 = repmat({'b'},size(b));
%     c = O_within34;
%     g3 = repmat({'c'},size(c));
%     data_within = [a;b;c];
%     group =  [g1;g2;g3];
% %     [p34,table34,stats34] = kruskalwallis(data_func_seg,group);
%     [p34w,table34w,stats34w] = anova1(data_within,group);
%     [cc34w,m,h,gnames] = multcompare(stats34w,'Alpha',0.05,'CType','bonferroni','Display','on');
%     
%%
% A = ones(7,7)-eye(7);
% order = [1:7];
% G = graph(A);
% G = reordernodes(G,order);
% % codeN = {'VIS','SM','DAN','VAN','LIM','FPN','DMN'};
% % h = plot(G,'layout','circle','nodelabel',codeN);
% h = plot(G,'layout','circle');
% h.EdgeColor = [0 0 0];
% h.LineStyle = '--';
% h.MarkerSize = 10;
% highlight(h,[1,2,3,1],'LineStyle','-','EdgeColor','k','LineWidth',2)
% highlight(h,[4,5,6,7,4,6,7,5],'LineStyle','-','EdgeColor','k','LineWidth',2)
% highlight(h,[1,2,3],'NodeColor','r')
% h.NodeLabelColor = 'w'


%%
load postFROdym.mat
Fpost_Prob =  group_prob;
Fpost_LT = group_LT;
Fpost_Dtrans = group_Dtrans;
Fpost_Trans = group_Trans;
sim_Fpost_LT = sim_group_LT;
load postOCCdym.mat
Opost_Prob = group_prob;
Opost_LT = group_LT;
Opost_Dtrans = group_Dtrans;
Opost_Trans = group_Trans;
sim_Opost_LT = sim_group_LT;

load Mean_Base_dym.mat
Base_Prob = group_prob;
Base_LT = group_LT;
Base_Dtrans = group_Dtrans;
Base_Trans = group_Trans;
sim_Base_LT = sim_group_LT;

Nmin = 6; 
%%
Fpost_Dtrans_s2d = zeros(15,Nmin);
Fpost_Trans_s2d = zeros(15,Nmin);
Opost_Dtrans_s2d = zeros(15,Nmin);
Opost_Trans_s2d = zeros(15,Nmin);
Base_Dtrans_s2d = zeros(15,Nmin);
Base_Trans_s2d = zeros(15,Nmin);

for i  = 1:15

    ind_Fpost_Dtrans = squeeze(Fpost_Dtrans(i,:,:));
    ind_Fpost_Trans = squeeze(Fpost_Trans(i,:,:));
    
    ind_Opost_Dtrans = squeeze(Opost_Dtrans(i,:,:));
    ind_Opost_Trans = squeeze(Opost_Trans(i,:,:));
    
    ind_Base_Dtrans = squeeze(Base_Dtrans(i,:,:));
    ind_Base_Trans = squeeze(Base_Trans(i,:,:));

    
    Fpost_Dtrans_s2d(i,:) = sum(ind_Fpost_Dtrans,2);
    Fpost_Trans_s2d(i,:) = sum(ind_Fpost_Trans,2);
    
    Opost_Dtrans_s2d(i,:) = sum(ind_Opost_Dtrans,2);
    Opost_Trans_s2d(i,:) = sum(ind_Opost_Trans,2);
    
    Base_Dtrans_s2d(i,:) = sum(ind_Base_Dtrans,2);
    Base_Trans_s2d(i,:) = sum(ind_Base_Trans,2);
end

%%

Base_Prob16 =  Base_Prob(:,1)+Base_Prob(:,6);
Base_Prob25 =  Base_Prob(:,2)+Base_Prob(:,5);
Base_Prob34 =  Base_Prob(:,3)+Base_Prob(:,4);

module_Base_Prob = [Base_Prob16,Base_Prob25,Base_Prob34];
module_Base_funcSeg = [base_func_seg16,base_func_seg25,base_func_seg34];
[r1,p1] = corr(module_Base_Prob,module_Base_funcSeg);


Fpost_Prob16 =  Fpost_Prob(:,1)+Fpost_Prob(:,6);
Fpost_Prob25 =  Fpost_Prob(:,2)+Fpost_Prob(:,5);
Fpost_Prob34 =  Fpost_Prob(:,3)+Fpost_Prob(:,4);

module_Fpost_Prob = [Fpost_Prob16,Fpost_Prob25,Fpost_Prob34];
module_Fpost_funcSeg = [F_func_seg16,F_func_seg25,F_func_seg34];
[r2,p2] = corr(module_Fpost_Prob,module_Fpost_funcSeg);

Opost_Prob16 =  Opost_Prob(:,1)+Opost_Prob(:,6);
Opost_Prob25 =  Opost_Prob(:,2)+Opost_Prob(:,5);
Opost_Prob34 =  Opost_Prob(:,3)+Opost_Prob(:,4);

module_Opost_Prob = [Opost_Prob16,Opost_Prob25,Opost_Prob34];
module_Opost_funcSeg = [O_func_seg16,O_func_seg25,O_func_seg34];
[r3,p3] = corr(module_Opost_Prob,module_Opost_funcSeg);


%%
Base_Trans16 =  Base_Trans_s2d(:,1)+Base_Trans_s2d(:,6);
Base_Trans25 =  Base_Trans_s2d(:,2)+Base_Trans_s2d(:,5);
Base_Trans34 =  Base_Trans_s2d(:,3)+Base_Trans_s2d(:,4);

module_Base_Trans_s2d = [Base_Trans16,Base_Trans25,Base_Trans34];
[r4,p4] = corr(module_Base_Trans_s2d,module_Base_funcSeg);

Fpost_Trans16 =  Fpost_Trans_s2d(:,1)+Fpost_Trans_s2d(:,6);
Fpost_Trans25 =  Fpost_Trans_s2d(:,2)+Fpost_Trans_s2d(:,5);
Fpost_Trans34 =  Fpost_Trans_s2d(:,3)+Fpost_Trans_s2d(:,4);
module_Fpost_Trans_s2d = [Fpost_Trans16,Fpost_Trans25,Fpost_Trans34];
[r5,p5] = corr(module_Fpost_Trans_s2d,module_Fpost_funcSeg);

Opost_Trans16 =  Opost_Trans_s2d(:,1)+Opost_Trans_s2d(:,6);
Opost_Trans25 =  Opost_Trans_s2d(:,2)+Opost_Trans_s2d(:,5);
Opost_Trans34 =  Opost_Trans_s2d(:,3)+Opost_Trans_s2d(:,4);
module_Opost_Trans_s2d = [Opost_Trans16,Opost_Trans25,Opost_Trans34];
[r6,p6] = corr(module_Opost_Trans_s2d,module_Opost_funcSeg);
%%
Base_Dtrans16 =  Base_Dtrans_s2d(:,1)+Base_Dtrans_s2d(:,6);
Base_Dtrans25 =  Base_Dtrans_s2d(:,2)+Base_Dtrans_s2d(:,5);
Base_Dtrans34 =  Base_Dtrans_s2d(:,3)+Base_Dtrans_s2d(:,4);

module_Base_Dtrans_s2d = [Base_Dtrans16,Base_Dtrans25,Base_Dtrans34];
[r7,p7] = corr(module_Base_Dtrans_s2d,module_Base_funcSeg);

Fpost_Dtrans16 =  Fpost_Dtrans_s2d(:,1)+Fpost_Dtrans_s2d(:,6);
Fpost_Dtrans25 =  Fpost_Dtrans_s2d(:,2)+Fpost_Dtrans_s2d(:,5);
Fpost_Dtrans34 =  Fpost_Dtrans_s2d(:,3)+Fpost_Dtrans_s2d(:,4);
module_Fpost_Dtrans_s2d = [Fpost_Dtrans16,Fpost_Dtrans25,Fpost_Dtrans34];
[r8,p8] = corr(module_Fpost_Dtrans_s2d,module_Fpost_funcSeg);

Opost_Dtrans16 =  Opost_Dtrans_s2d(:,1)+Opost_Dtrans_s2d(:,6);
Opost_Dtrans25 =  Opost_Dtrans_s2d(:,2)+Opost_Dtrans_s2d(:,5);
Opost_Dtrans34 =  Opost_Dtrans_s2d(:,3)+Opost_Dtrans_s2d(:,4);
module_Opost_Dtrans_s2d = [Opost_Dtrans16,Opost_Dtrans25,Opost_Dtrans34];
[r9,p9] = corr(module_Opost_Dtrans_s2d,module_Opost_funcSeg);

