.class public final Lo/getEndpointPackageName;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lo/doUnregisterEventListener;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/doUnregisterEventListener;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/doUnregisterEventListener;


# direct methods
.method public constructor <init>(Lo/doUnregisterEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getEndpointPackageName;)Lo/doUnregisterEventListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    invoke-interface {v0}, Lo/doUnregisterEventListener;->extraCallback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    invoke-interface {v0, p1}, Lo/doUnregisterEventListener;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lo/validateScopes;

    invoke-direct {v0, p0}, Lo/validateScopes;-><init>(Lo/getEndpointPackageName;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/getRequiredFeatures;

    invoke-direct {v0, p0, p1}, Lo/getRequiredFeatures;-><init>(Lo/getEndpointPackageName;I)V

    return-object v0
.end method

.method public final onMessageChannelReady(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    invoke-interface {v0, p1}, Lo/doUnregisterEventListener;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Lo/doUnregisterEventListener;
    .locals 0

    return-object p0
.end method

.method public final onPostMessage(Lo/getMobileAdsSettingsManager;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lo/getEndpointPackageName;->onMessageChannelReady:Lo/doUnregisterEventListener;

    invoke-interface {v0}, Lo/doUnregisterEventListener;->size()I

    move-result v0

    return v0
.end method
