.class public final Lo/ActionMenuView$LayoutParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/ActionMenuView$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field onMessageChannelReady:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/ActionMenuView$LayoutParams$1;

    invoke-direct {v0}, Lo/ActionMenuView$LayoutParams$1;-><init>()V

    sput-object v0, Lo/ActionMenuView$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lo/ActionMenuView$LayoutParams;->onMessageChannelReady:Ljava/util/NavigableSet;

    .line 13
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lo/ActionMenuView$LayoutParams;->onNavigationEvent:Ljava/util/NavigableSet;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 23
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 24
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 26
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lo/ActionMenuView$LayoutParams;->onMessageChannelReady:Ljava/util/NavigableSet;

    .line 27
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lo/ActionMenuView$LayoutParams;->onNavigationEvent:Ljava/util/NavigableSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/ActionMenuView$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/NavigableSet;Ljava/util/NavigableSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lo/ActionMenuView$LayoutParams;->onMessageChannelReady:Ljava/util/NavigableSet;

    .line 13
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lo/ActionMenuView$LayoutParams;->onNavigationEvent:Ljava/util/NavigableSet;

    .line 16
    iput-object p1, p0, Lo/ActionMenuView$LayoutParams;->onMessageChannelReady:Ljava/util/NavigableSet;

    .line 17
    iput-object p2, p0, Lo/ActionMenuView$LayoutParams;->onNavigationEvent:Ljava/util/NavigableSet;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 32
    new-instance p2, Ljava/util/LinkedList;

    iget-object v0, p0, Lo/ActionMenuView$LayoutParams;->onMessageChannelReady:Ljava/util/NavigableSet;

    invoke-direct {p2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lo/ActionMenuView$LayoutParams;->onNavigationEvent:Ljava/util/NavigableSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
