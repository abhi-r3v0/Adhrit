.class final synthetic Lo/setTranslationY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/FloatingActionButton$Behavior;

.field private final onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

.field private final onNavigationEvent:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lo/FloatingActionButton$Behavior;Lo/HideBottomViewOnScrollBehavior;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setTranslationY;->extraCallback:Lo/FloatingActionButton$Behavior;

    iput-object p2, p0, Lo/setTranslationY;->onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

    iput-object p3, p0, Lo/setTranslationY;->onNavigationEvent:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/setTranslationY;->extraCallback:Lo/FloatingActionButton$Behavior;

    iget-object v1, p0, Lo/setTranslationY;->onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

    iget-object v2, p0, Lo/setTranslationY;->onNavigationEvent:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lo/FloatingActionButton$Behavior;->onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;Landroid/app/job/JobParameters;)V

    return-void
.end method
