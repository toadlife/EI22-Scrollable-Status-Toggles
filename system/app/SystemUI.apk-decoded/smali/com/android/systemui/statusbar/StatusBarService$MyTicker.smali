.class Lcom/android/systemui/statusbar/StatusBarService$MyTicker;
.super Lcom/android/systemui/statusbar/Ticker;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    .line 1593
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/Ticker;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 1594
    return-void
.end method


# virtual methods
.method tickerDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x10a0024

    const/4 v1, 0x0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0025

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1620
    :cond_0
    return-void
.end method

.method tickerHalting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x10a

    const/4 v1, 0x0

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0001

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1632
    :cond_0
    return-void
.end method

.method tickerStarting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x10a0027

    const/4 v3, 0x0

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$602(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0026

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1604
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1607
    :cond_0
    return-void
.end method
