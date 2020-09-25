.class final synthetic Lo/setTranslationZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Intent;

.field private final onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/FloatingActionButton$Behavior;


# direct methods
.method constructor <init>(Lo/FloatingActionButton$Behavior;ILo/HideBottomViewOnScrollBehavior;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setTranslationZ;->onPostMessage:Lo/FloatingActionButton$Behavior;

    iput p2, p0, Lo/setTranslationZ;->onNavigationEvent:I

    iput-object p3, p0, Lo/setTranslationZ;->onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

    iput-object p4, p0, Lo/setTranslationZ;->ICustomTabsCallback:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/setTranslationZ;->onPostMessage:Lo/FloatingActionButton$Behavior;

    iget v1, p0, Lo/setTranslationZ;->onNavigationEvent:I

    iget-object v2, p0, Lo/setTranslationZ;->onMessageChannelReady:Lo/HideBottomViewOnScrollBehavior;

    iget-object v3, p0, Lo/setTranslationZ;->ICustomTabsCallback:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lo/FloatingActionButton$Behavior;->onMessageChannelReady(ILo/HideBottomViewOnScrollBehavior;Landroid/content/Intent;)V

    return-void
.end method
