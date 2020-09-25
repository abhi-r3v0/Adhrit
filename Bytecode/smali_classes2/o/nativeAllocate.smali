.class final Lo/nativeAllocate;
.super Lo/BasePool$SizeTooLargeException;


# static fields
.field private static final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/nativeAllocate;->onPostMessage:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/BasePool$SizeTooLargeException;-><init>(Lo/BasePool$InvalidSizeException;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BasePool$InvalidSizeException;)V
    .locals 0

    invoke-direct {p0}, Lo/nativeAllocate;-><init>()V

    return-void
.end method

.method private static onPostMessage(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lo/AshmemMemoryChunkPool;

    if-eqz v1, :cond_0

    check-cast v0, Lo/AshmemMemoryChunkPool;

    invoke-interface {v0}, Lo/AshmemMemoryChunkPool;->onNavigationEvent()Lo/AshmemMemoryChunkPool;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/nativeAllocate;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lo/nativeAllocate;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4}, Lo/nativeAllocate;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v1, v1, Lo/AshmemMemoryChunkPool;

    if-eqz v1, :cond_0

    new-instance v1, Lo/BasePool$InvalidValueException;

    invoke-direct {v1, v0}, Lo/BasePool$InvalidValueException;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p1, p3, p4, v1}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v2, Lo/nativeAllocate;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {p1, p3, p4, v2}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lo/FaqOptions;

    if-eqz v2, :cond_3

    new-instance v2, Lo/BasePool$InvalidValueException;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lo/BasePool$InvalidValueException;-><init>(I)V

    check-cast v1, Lo/FaqOptions;

    invoke-virtual {v2, v1}, Lo/setLayoutParams;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_4

    if-lez v2, :cond_4

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-lez v0, :cond_5

    move-object p2, v1

    :cond_5
    invoke-static {p1, p3, p4, p2}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
