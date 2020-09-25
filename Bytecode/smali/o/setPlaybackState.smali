.class public final Lo/setPlaybackState;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 315
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    const-class v0, [Ljava/lang/String;

    const-class v0, Landroid/os/Binder;

    const-class v0, Landroid/os/Bundle;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v0, Ljava/lang/CharSequence;

    const-class v0, [Ljava/lang/CharSequence;

    const-class v0, Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v0, Landroid/os/Parcelable;

    const-class v0, [Landroid/os/Parcelable;

    const-class v0, Ljava/io/Serializable;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v0, Landroid/util/SparseArray;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-class v0, Landroid/util/Size;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/util/SizeF;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPlaybackState;->onNavigationEvent:Ljava/util/Map;

    .line 63
    new-instance v0, Lo/setPlaybackState$4;

    invoke-direct {v0, p0}, Lo/setPlaybackState$4;-><init>(Lo/setPlaybackState;)V

    iput-object v0, p0, Lo/setPlaybackState;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPlaybackState;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPlaybackState;->onNavigationEvent:Ljava/util/Map;

    .line 63
    new-instance v0, Lo/setPlaybackState$4;

    invoke-direct {v0, p0}, Lo/setPlaybackState$4;-><init>(Lo/setPlaybackState;)V

    iput-object v0, p0, Lo/setPlaybackState;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/setPlaybackState;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method public static onPostMessage(Landroid/os/Bundle;Landroid/os/Bundle;)Lo/setPlaybackState;
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 102
    new-instance p0, Lo/setPlaybackState;

    invoke-direct {p0}, Lo/setPlaybackState;-><init>()V

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 113
    new-instance p0, Lo/setPlaybackState;

    invoke-direct {p0, v0}, Lo/setPlaybackState;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_2
    const-string p1, "keys"

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v1, "values"

    .line 117
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 118
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 121
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 122
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_3
    new-instance p0, Lo/setPlaybackState;

    invoke-direct {p0, v0}, Lo/setPlaybackState;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 119
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
