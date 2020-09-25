.class final Lo/InstallReferrerClient$InstallReferrerResponse$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstallReferrerCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstallReferrerClient$InstallReferrerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstallReferrerCommons<",
        "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/InstallReferrerCommons;


# direct methods
.method constructor <init>(Lo/InstallReferrerCommons;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse$3;->ICustomTabsCallback:Lo/InstallReferrerCommons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 1

    .line 131
    check-cast p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    .line 1134
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse$3;->ICustomTabsCallback:Lo/InstallReferrerCommons;

    iget-object p1, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/InstallReferrerCommons;->onPostMessage(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
