.class final Lo/InstallReferrerClient$InstallReferrerResponse$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPageMargin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPageMargin<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

.field private synthetic onPostMessage:Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;


# direct methods
.method constructor <init>(Lo/InstallReferrerClient$InstallReferrerResponse;Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$1;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    iput-object p2, p0, Lo/InstallReferrerClient$InstallReferrerResponse$1;->onPostMessage:Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 246
    iget-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$1;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse$1;->onPostMessage:Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    invoke-static {p1, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent(Lo/InstallReferrerClient$InstallReferrerResponse;Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V

    return-void
.end method
