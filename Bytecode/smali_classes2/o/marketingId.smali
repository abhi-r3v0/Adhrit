.class public final Lo/marketingId;
.super Lo/isMobileUserCommentsAllowed;
.source ""

# interfaces
.implements Lo/getMessageUserType;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isMobileUserCommentsAllowed<",
        "Ljava/lang/String;",
        ">;",
        "Lo/getMessageUserType;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/marketingId;

.field private static final onPostMessage:Lo/getMessageUserType;


# instance fields
.field private final onNavigationEvent:Ljava/util/List;
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

    .line 79
    new-instance v0, Lo/marketingId;

    invoke-direct {v0}, Lo/marketingId;-><init>()V

    .line 80
    sput-object v0, Lo/marketingId;->onMessageChannelReady:Lo/marketingId;

    invoke-virtual {v0}, Lo/isMobileUserCommentsAllowed;->I_()V

    .line 81
    sget-object v0, Lo/marketingId;->onMessageChannelReady:Lo/marketingId;

    sput-object v0, Lo/marketingId;->onPostMessage:Lo/getMessageUserType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lo/marketingId;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo/marketingId;-><init>(Ljava/util/ArrayList;)V

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

    .line 5
    invoke-direct {p0}, Lo/isMobileUserCommentsAllowed;-><init>()V

    .line 6
    iput-object p1, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 24
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 26
    :cond_0
    instance-of v0, p0, Lo/setMandatory;

    if-eqz v0, :cond_1

    .line 27
    check-cast p0, Lo/setMandatory;

    invoke-virtual {p0}, Lo/setMandatory;->onNavigationEvent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lo/fromString;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/setClicked;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lo/marketingId;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    iget-object p1, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance p1, Lo/marketingId;

    invoke-direct {p1, v0}, Lo/marketingId;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic ICustomTabsCallback()Z
    .locals 1

    .line 47
    invoke-super {p0}, Lo/isMobileUserCommentsAllowed;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 48
    check-cast p2, Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 50
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 51
    iget p1, p0, Lo/marketingId;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/marketingId;->modCount:I

    return-void
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lo/isMobileUserCommentsAllowed;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 10
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 11
    instance-of v0, p2, Lo/getMessageUserType;

    if-eqz v0, :cond_0

    check-cast p2, Lo/getMessageUserType;

    invoke-interface {p2}, Lo/getMessageUserType;->onPostMessage()Ljava/util/List;

    move-result-object p2

    .line 12
    :cond_0
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 13
    iget p2, p0, Lo/marketingId;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/marketingId;->modCount:I

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

    .line 9
    invoke-virtual {p0}, Lo/marketingId;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lo/isMobileUserCommentsAllowed;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 16
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget v0, p0, Lo/marketingId;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/marketingId;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lo/isMobileUserCommentsAllowed;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 64
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 67
    :cond_0
    instance-of v1, v0, Lo/setMandatory;

    if-eqz v1, :cond_2

    .line 68
    check-cast v0, Lo/setMandatory;

    .line 69
    invoke-virtual {v0}, Lo/setMandatory;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lo/setMandatory;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 73
    :cond_2
    check-cast v0, [B

    .line 74
    invoke-static {v0}, Lo/fromString;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0}, Lo/fromString;->ICustomTabsCallback([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .line 54
    invoke-super {p0}, Lo/isMobileUserCommentsAllowed;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Lo/getMessageUserType;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lo/getErrorMessageByTypesMap;

    invoke-direct {v0, p0}, Lo/getErrorMessageByTypesMap;-><init>(Lo/getMessageUserType;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final onPostMessage(I)Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 29
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 43
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 44
    iget v0, p0, Lo/marketingId;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/marketingId;->modCount:I

    .line 45
    invoke-static {p1}, Lo/marketingId;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/isMobileUserCommentsAllowed;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/isMobileUserCommentsAllowed;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lo/isMobileUserCommentsAllowed;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    check-cast p2, Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lo/isMobileUserCommentsAllowed;->extraCallback()V

    .line 35
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lo/marketingId;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 8
    iget-object v0, p0, Lo/marketingId;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
