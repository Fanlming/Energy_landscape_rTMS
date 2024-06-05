clc;clear all;close all
%
load preFROdym.mat
pre_Prob = group_prob;
pre_LT = group_LT;
pre_Dtrans = group_Dtrans;
pre_Trans = group_Trans;
load postFROdym.mat
post_Prob = group_prob;
post_LT = group_LT;
post_Dtrans = group_Dtrans;
post_Trans = group_Trans;


Nmin = 6; 
%%
pre_Dtrans_s2d = zeros(15,Nmin);
pre_Trans_s2d = zeros(15,Nmin);
post_Dtrans_s2d = zeros(15,Nmin);
post_Trans_s2d = zeros(15,Nmin);

for i  = 1:15
    ind_pre_Dtrans = squeeze(pre_Dtrans(i,:,:));
    ind_pre_Trans = squeeze(pre_Trans(i,:,:));
    ind_post_Dtrans = squeeze(post_Dtrans(i,:,:));
    ind_post_Trans = squeeze(post_Trans(i,:,:));

    
    
    
    pre_Dtrans_s2d(i,:) = sum(ind_pre_Dtrans,2);
    pre_Trans_s2d(i,:) = sum(ind_pre_Trans,2);
    post_Dtrans_s2d(i,:) = sum(ind_post_Dtrans,2);
    post_Trans_s2d(i,:) = sum(ind_post_Trans,2);
end

State = {'S1','S2','S3','S4','S5','S6'};
figure;
for i = 1:Nmin
    a = pre_Prob(:,i)';
    b = post_Prob(:,i)';
    stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
    Prob_pval(i) = min(stats.pvals);
    Prob_tval(i) = stats.tvals;
    
    subplot(1,6,i)
    volp = violinplot([a' b']);
    set(gca, 'XTick', 1:2, 'XTickLabels', {['pre'],['post']});
    set(gca,'FontName','Helvetica','FontSize',12);
    title(State{i});
    ylim([min([a,b])-0.05,max([a,b])+0.1]);
%     if i==1 || i==4
%         ylabel('Occurrence Frequency')
%     end
    volp(1, 1).ViolinPlot.LineWidth = 0.5;
    volp(1, 2).ViolinPlot.LineWidth = 0.5;
    volp(1, 1).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 2).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 1).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.FaceColor = [231 162 170]./255;
    volp(1, 1).ViolinPlot.FaceColor = [139 190 226]./255;
%     volp(1, 1).ScatterPlot.MarkerFaceColor = [0 0 0];
%     volp(1, 2).ScatterPlot.MarkerFaceColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.XLim = [0.3 2.7];
    volp(1, 1).ViolinPlot.Parent.XColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.YColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.LineWidth = 1;
    volp(1, 1).ViolinPlot.Parent.FontSize = 15;
    volp(1, 1).ViolinPlot.Parent.Parent.Position = [233 526 1348 205];
    

    hold on;
    if Prob_pval(i)<=0.05
       xx=[1 2];yy=[max([a,b]),max([a,b])]+0.015;line(xx,yy,'color','black','linewidth',0.5);
    end
    hold on;
    if Prob_pval(i)<=0.05 && Prob_pval(i)>0.01
        scatter(1.5,max([a,b])+0.04,'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif Prob_pval(i)<=0.01 && Prob_pval(i)>0.001
        scatter([1.35,1.65],[max([a,b])+0.04,max([a,b])+0.04],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif  Prob_pval(i)<=0.001
                scatter([1.2,1.5,1.8],[max([a,b])+0.04,max([a,b])+0.04,max([a,b])+0.04],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    end
    
end    
figure;   
for i = 1:Nmin    
    a = pre_LT(:,i)';
    b = post_LT(:,i)';
    stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
    LT_pval(i) = min(stats.pvals);
    LT_tval(i) = stats.tvals;
    
    subplot(1,6,i)
    volp = violinplot([a' b']);
    set(gca, 'XTick', 1:2, 'XTickLabels', {['pre'],['post']});
    set(gca,'FontName','Helvetica','FontSize',12);
    title(State{i});
    
    ylim([min([a,b])-0.5,max([a,b])+2]);

    volp(1, 1).ViolinPlot.LineWidth = 0.5;
    volp(1, 2).ViolinPlot.LineWidth = 0.5;
    volp(1, 1).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 2).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 1).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.FaceColor = [231 162 170]./255;
    volp(1, 1).ViolinPlot.FaceColor = [139 190 226]./255;
%     volp(1, 1).ScatterPlot.MarkerFaceColor = [0 0 0];
%     volp(1, 2).ScatterPlot.MarkerFaceColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.XLim = [0.3 2.7];
    volp(1, 1).ViolinPlot.Parent.XColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.YColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.LineWidth = 1;
    volp(1, 1).ViolinPlot.Parent.FontSize = 15;
    volp(1, 1).ViolinPlot.Parent.Parent.Position = [233 526 1348 205];
    

    hold on;
    if LT_pval(i)<=0.05
       xx=[1 2];yy=[max([a,b]),max([a,b])]+0.4;line(xx,yy,'color','black','linewidth',0.5);
    end
    hold on;
    if LT_pval(i)<=0.05 && LT_pval(i)>0.01
        scatter(1.5,max([a,b])+0.8,'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif LT_pval(i)<=0.01 && LT_pval(i)>0.001
        scatter([1.35,1.65],[max([a,b])+0.8,max([a,b])+0.8],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif  LT_pval(i)<=0.001
                scatter([1.2,1.5,1.8],[max([a,b])+0.8,max([a,b])+0.8,max([a,b])+0.8],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    end
    
    
    
end

figure;
for i = 1:Nmin   
    a = pre_Dtrans_s2d(:,i)';
    b = post_Dtrans_s2d(:,i)';
    stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
    s2d_Dtrans_pval(i) = min(stats.pvals);
    s2d_Dtrans_tval(i) = stats.tvals;
    
    subplot(1,6,i)
    volp = violinplot([a' b']);
    set(gca, 'XTick', 1:2, 'XTickLabels', {['pre'],['post']});
    set(gca,'FontName','Helvetica','FontSize',12);
    title(State{i});
    
    ylim([min([a,b])-0.01,max([a,b])+0.025]);

    volp(1, 1).ViolinPlot.LineWidth = 0.5;
    volp(1, 2).ViolinPlot.LineWidth = 0.5;
    volp(1, 1).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 2).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 1).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.FaceColor = [231 162 170]./255;
    volp(1, 1).ViolinPlot.FaceColor = [139 190 226]./255;
%     volp(1, 1).ScatterPlot.MarkerFaceColor = [0 0 0];
%     volp(1, 2).ScatterPlot.MarkerFaceColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.XLim = [0.3 2.7];
    volp(1, 1).ViolinPlot.Parent.XColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.YColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.LineWidth = 1;
    volp(1, 1).ViolinPlot.Parent.FontSize = 15;
    volp(1, 1).ViolinPlot.Parent.Parent.Position = [233 526 1348 205];
    

    hold on;
    if s2d_Dtrans_pval(i)<=0.05
       xx=[1 2];yy=[max([a,b]),max([a,b])]+0.005;line(xx,yy,'color','black','linewidth',0.5);
    end
    hold on;
    if s2d_Dtrans_pval(i)<=0.05 && s2d_Dtrans_pval(i)>0.01
        scatter(1.5,max([a,b])+0.01,'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif s2d_Dtrans_pval(i)<=0.01 && s2d_Dtrans_pval(i)>0.001
        scatter([1.35,1.65],[max([a,b])+0.01,max([a,b])+0.01],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif  s2d_Dtrans_pval(i)<=0.001
                scatter([1.2,1.5,1.8],[max([a,b])+0.01,max([a,b])+0.01,max([a,b])+0.01],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    end
end

figure;
for i = 1:Nmin    
    a = pre_Trans_s2d(:,i)';
    b = post_Trans_s2d(:,i)';
    stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
    s2d_Trans_pval(i) = min(stats.pvals);
    s2d_Trans_tval(i) = stats.tvals;
    
    subplot(1,6,i)
    volp = violinplot([a' b']);
    set(gca, 'XTick', 1:2, 'XTickLabels', {['pre'],['post']});
    set(gca,'FontName','Helvetica','FontSize',12);
    title(State{i});
    
    ylim([min([a,b])-0.03,max([a,b])+0.06]);

    volp(1, 1).ViolinPlot.LineWidth = 0.5;
    volp(1, 2).ViolinPlot.LineWidth = 0.5;
    volp(1, 1).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 2).ViolinPlot.FaceAlpha = 0.8;
    volp(1, 1).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.EdgeColor = [222 222 222]./255;
    volp(1, 2).ViolinPlot.FaceColor = [231 162 170]./255;
    volp(1, 1).ViolinPlot.FaceColor = [139 190 226]./255;
%     volp(1, 1).ScatterPlot.MarkerFaceColor = [0 0 0];
%     volp(1, 2).ScatterPlot.MarkerFaceColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.XLim = [0.3 2.7];
    volp(1, 1).ViolinPlot.Parent.XColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.YColor = [0 0 0];
    volp(1, 1).ViolinPlot.Parent.LineWidth = 1;
    volp(1, 1).ViolinPlot.Parent.FontSize = 15;
    volp(1, 1).ViolinPlot.Parent.Parent.Position = [233 526 1348 205];
    

    hold on;
    if s2d_Trans_pval(i)<=0.05
       xx=[1 2];yy=[max([a,b]),max([a,b])]+0.015;line(xx,yy,'color','black','linewidth',0.5);
    end
    hold on;
    if s2d_Trans_pval(i)<=0.05 && s2d_Trans_pval(i)>0.01
        scatter(1.5,max([a,b])+0.04,'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif s2d_Trans_pval(i)<=0.01 && s2d_Trans_pval(i)>0.001
        scatter([1.35,1.65],[max([a,b])+0.04,max([a,b])+0.04],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    elseif  s2d_Trans_pval(i)<=0.001
                scatter([1.2,1.5,1.8],[max([a,b])+0.04,max([a,b])+0.04,max([a,b])+0.04],'*','MarkerEdgeColor',[0 0 0],...
              'MarkerFaceColor',[0 0 0]); 
    end
end


% for i = 1:Nmin
%     for j = 1:Nmin
%         a = squeeze(pre_Dtrans(:,i,j))';
%         b = squeeze(post_Dtrans(:,i,j))';
%         stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
%         if sum(a>0)-1>0 && sum(b>0)-1>0
%         Dtrans_pval(i,j) = min(stats.pvals);
%         Dtrans_tval(i,j) = stats.tvals;
%         else
%         Dtrans_pval(i,j) = NaN;
%         Dtrans_tval(i,j) = NaN;
%         end
%         
%         a = squeeze(pre_Trans(:,i,j))';
%         b = squeeze(post_Trans(:,i,j))';
%         stats=permutation_htest2_np([a,b],[ones(1,numel(a)) 2*ones(1,numel(b))],5000,0.05,'ttest');
%         Trans_pval(i,j) = min(stats.pvals);
%         Trans_tval(i,j) = stats.tvals;
%         
%         
%         if sum(a>0)-1>0 && sum(b>0)-1>0
%         Trans_pval(i,j) = min(stats.pvals);
%         Trans_tval(i,j) = stats.tvals;
%         else
%         Trans_pval(i,j) = NaN;
%         Trans_tval(i,j) = NaN;
%         end
%         
%         
%     end
% end