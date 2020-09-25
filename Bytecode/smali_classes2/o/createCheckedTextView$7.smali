.class final Lo/createCheckedTextView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onNavigationEvent(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic extraCallback:Lo/createCheckedTextView;

.field private synthetic onMessageChannelReady:Lo/onMeasureExactFormat;

.field private synthetic onNavigationEvent:Lo/ActionBarContainer;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lo/createCheckedTextView$7;->extraCallback:Lo/createCheckedTextView;

    iput-object p2, p0, Lo/createCheckedTextView$7;->onNavigationEvent:Lo/ActionBarContainer;

    iput-object p3, p0, Lo/createCheckedTextView$7;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p4, p0, Lo/createCheckedTextView$7;->onMessageChannelReady:Lo/onMeasureExactFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 973
    iget-object v0, p0, Lo/createCheckedTextView$7;->extraCallback:Lo/createCheckedTextView;

    iget-object v1, p0, Lo/createCheckedTextView$7;->onNavigationEvent:Lo/ActionBarContainer;

    iget-object v2, p0, Lo/createCheckedTextView$7;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v3, p0, Lo/createCheckedTextView$7;->onMessageChannelReady:Lo/onMeasureExactFormat;

    invoke-virtual {v0, v1, v2, v3}, Lo/createCheckedTextView;->onNavigationEvent(Lo/ActionBarContainer;Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    return-void
.end method
