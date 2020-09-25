.class final Lo/setErrorIconDrawable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Ljava/lang/Object;

.field final onMessageChannelReady:J

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p6}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lo/setErrorIconDrawable;->onPostMessage:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    .line 8
    iput-wide p4, p0, Lo/setErrorIconDrawable;->onMessageChannelReady:J

    .line 9
    iput-object p6, p0, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    return-void
.end method
