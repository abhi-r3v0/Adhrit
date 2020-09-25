.class public final Lo/setApplyingOpacityToLayersEnabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/invalidateSpanInfo;


# direct methods
.method public constructor <init>(Lo/invalidateSpanInfo;Lo/InstallReferrerClient$InstallReferrerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/invalidateSpanInfo;",
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lo/setApplyingOpacityToLayersEnabled;->onNavigationEvent:Lo/invalidateSpanInfo;

    .line 87
    iput-object p2, p0, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 88
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lo/setApplyingOpacityToLayersEnabled;->extraCallback:Ljava/util/LinkedHashSet;

    .line 89
    new-instance p1, Lo/setApplyingOpacityToLayersEnabled$5;

    invoke-direct {p1, p0}, Lo/setApplyingOpacityToLayersEnabled$5;-><init>(Lo/setApplyingOpacityToLayersEnabled;)V

    iput-object p1, p0, Lo/setApplyingOpacityToLayersEnabled;->ICustomTabsCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback()Lo/invalidateSpanInfo;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lo/setApplyingOpacityToLayersEnabled;->extraCallback:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/invalidateSpanInfo;

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(Lo/invalidateSpanInfo;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 99
    :try_start_0
    iget-object p2, p0, Lo/setApplyingOpacityToLayersEnabled;->extraCallback:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    iget-object p2, p0, Lo/setApplyingOpacityToLayersEnabled;->extraCallback:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
