.class public abstract Lo/getTheme;
.super Landroidx/databinding/ViewDataBinding;
.source ""


# instance fields
.field public final extraCallback:Lo/onPrimaryNavigationFragmentChanged;

.field public final onMessageChannelReady:Landroidx/cardview/widget/CardView;

.field public final onNavigationEvent:Landroidx/cardview/widget/CardView;

.field public final onPostMessage:Landroidx/cardview/widget/CardView;

.field protected onTransact:Lo/setStateAfterAnimating;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;Lo/onPrimaryNavigationFragmentChanged;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;)V
    .locals 1

    const/4 v0, 0x7

    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    iput-object p3, p0, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    .line 40
    iput-object p4, p0, Lo/getTheme;->onNavigationEvent:Landroidx/cardview/widget/CardView;

    .line 41
    iput-object p5, p0, Lo/getTheme;->onPostMessage:Landroidx/cardview/widget/CardView;

    .line 42
    iput-object p6, p0, Lo/getTheme;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/setStateAfterAnimating;)V
.end method
