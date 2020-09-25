.class final Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstallReferrerClient$InstallReferrerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public final extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public onPostMessage:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/getRootAlpha<",
            "TV;>;",
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "TK;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 68
    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getRootAlpha;

    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onMessageChannelReady:Lo/getRootAlpha;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    .line 71
    iput-boolean p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z

    .line 72
    iput-object p3, p0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    return-void

    .line 2215
    :cond_0
    throw v0

    .line 1215
    :cond_1
    throw v0
.end method
