.class final Lo/setApplyingOpacityToLayersEnabled$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setApplyingOpacityToLayersEnabled;-><init>(Lo/invalidateSpanInfo;Lo/InstallReferrerClient$InstallReferrerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
        "Lo/invalidateSpanInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setApplyingOpacityToLayersEnabled;


# direct methods
.method constructor <init>(Lo/setApplyingOpacityToLayersEnabled;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/setApplyingOpacityToLayersEnabled$5;->onMessageChannelReady:Lo/setApplyingOpacityToLayersEnabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;Z)V
    .locals 1

    .line 89
    check-cast p1, Lo/invalidateSpanInfo;

    .line 1092
    iget-object v0, p0, Lo/setApplyingOpacityToLayersEnabled$5;->onMessageChannelReady:Lo/setApplyingOpacityToLayersEnabled;

    invoke-virtual {v0, p1, p2}, Lo/setApplyingOpacityToLayersEnabled;->onPostMessage(Lo/invalidateSpanInfo;Z)V

    return-void
.end method
