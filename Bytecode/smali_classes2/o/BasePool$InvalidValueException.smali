.class public final Lo/BasePool$InvalidValueException;
.super Lo/setLayoutParams;

# interfaces
.implements Lo/AshmemMemoryChunkPool;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setLayoutParams<",
        "Ljava/lang/String;",
        ">;",
        "Lo/AshmemMemoryChunkPool;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/BasePool$InvalidValueException;

.field private static final onMessageChannelReady:Lo/AshmemMemoryChunkPool;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/BasePool$InvalidValueException;

    invoke-direct {v0}, Lo/BasePool$InvalidValueException;-><init>()V

    sput-object v0, Lo/BasePool$InvalidValueException;->extraCallback:Lo/BasePool$InvalidValueException;

    invoke-virtual {v0}, Lo/setLayoutParams;->extraCallback()V

    sget-object v0, Lo/BasePool$InvalidValueException;->extraCallback:Lo/BasePool$InvalidValueException;

    sput-object v0, Lo/BasePool$InvalidValueException;->onMessageChannelReady:Lo/AshmemMemoryChunkPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lo/BasePool$InvalidValueException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo/BasePool$InvalidValueException;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/setLayoutParams;-><init>()V

    iput-object p1, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lo/setTopInset;

    if-eqz v0, :cond_1

    check-cast p0, Lo/setTopInset;

    invoke-virtual {p0}, Lo/setTopInset;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lo/ExceptionWithNoStacktrace;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lo/setLayoutParams;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Lo/BasePool$InvalidValueException;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/BasePool$InvalidValueException;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo/setLayoutParams;->ICustomTabsCallback()V

    instance-of v0, p2, Lo/AshmemMemoryChunkPool;

    if-eqz v0, :cond_0

    check-cast p2, Lo/AshmemMemoryChunkPool;

    invoke-interface {p2}, Lo/AshmemMemoryChunkPool;->onPostMessage()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Lo/BasePool$InvalidValueException;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/BasePool$InvalidValueException;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lo/BasePool$InvalidValueException;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lo/setLayoutParams;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lo/setLayoutParams;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lo/BasePool$InvalidValueException;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/BasePool$InvalidValueException;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lo/setLayoutParams;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lo/setTopInset;

    if-eqz v1, :cond_2

    check-cast v0, Lo/setTopInset;

    invoke-virtual {v0}, Lo/setTopInset;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lo/setTopInset;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lo/ExceptionWithNoStacktrace;->extraCallback([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lo/ExceptionWithNoStacktrace;->ICustomTabsCallback([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lo/setLayoutParams;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onMessageChannelReady()Z
    .locals 1

    invoke-super {p0}, Lo/setLayoutParams;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Lo/AshmemMemoryChunkPool;
    .locals 1

    invoke-virtual {p0}, Lo/setLayoutParams;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/FaqOptions;

    invoke-direct {v0, p0}, Lo/FaqOptions;-><init>(Lo/AshmemMemoryChunkPool;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final synthetic onNavigationEvent(I)Lo/setImageRequest;
    .locals 1

    invoke-virtual {p0}, Lo/BasePool$InvalidValueException;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lo/BasePool$InvalidValueException;

    invoke-direct {p1, v0}, Lo/BasePool$InvalidValueException;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo/setLayoutParams;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lo/BasePool$InvalidValueException;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/BasePool$InvalidValueException;->modCount:I

    invoke-static {p1}, Lo/BasePool$InvalidValueException;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lo/setLayoutParams;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lo/setLayoutParams;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Lo/setLayoutParams;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lo/setLayoutParams;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/BasePool$InvalidValueException;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lo/BasePool$InvalidValueException;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
