.class public final Lo/FaqOptions;
.super Ljava/util/AbstractList;

# interfaces
.implements Lo/AshmemMemoryChunkPool;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/AshmemMemoryChunkPool;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/AshmemMemoryChunkPool;


# direct methods
.method public constructor <init>(Lo/AshmemMemoryChunkPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/FaqOptions;)Lo/AshmemMemoryChunkPool;
    .locals 0

    iget-object p0, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    invoke-interface {v0, p1}, Lo/AshmemMemoryChunkPool;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    invoke-interface {v0, p1}, Lo/AshmemMemoryChunkPool;->get(I)Ljava/lang/Object;

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

    new-instance v0, Lo/showContactUsOnAppBar;

    invoke-direct {v0, p0}, Lo/showContactUsOnAppBar;-><init>(Lo/FaqOptions;)V

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

    new-instance v0, Lo/showFaqCategoriesAsGrid;

    invoke-direct {v0, p0, p1}, Lo/showFaqCategoriesAsGrid;-><init>(Lo/FaqOptions;I)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/AshmemMemoryChunkPool;
    .locals 0

    return-object p0
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    invoke-interface {v0}, Lo/AshmemMemoryChunkPool;->onPostMessage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lo/FaqOptions;->extraCallback:Lo/AshmemMemoryChunkPool;

    invoke-interface {v0}, Lo/AshmemMemoryChunkPool;->size()I

    move-result v0

    return v0
.end method
