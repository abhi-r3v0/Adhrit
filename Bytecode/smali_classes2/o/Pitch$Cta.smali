.class final Lo/Pitch$Cta;
.super Lo/LoanStatusResponse$Detail;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/LoanStatusResponse$Detail<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/Pitch$Cta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Pitch$Cta<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Pitch$Cta;

    invoke-direct {v0}, Lo/Pitch$Cta;-><init>()V

    sput-object v0, Lo/Pitch$Cta;->onPostMessage:Lo/Pitch$Cta;

    invoke-virtual {v0}, Lo/LoanStatusResponse$Detail;->onPostMessage()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lo/Pitch$Cta;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/LoanStatusResponse$Detail;-><init>()V

    iput-object p1, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method public static extraCallback()Lo/Pitch$Cta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/Pitch$Cta<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lo/Pitch$Cta;->onPostMessage:Lo/Pitch$Cta;

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    iget-object v0, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Lo/Pitch$Cta;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/Pitch$Cta;->modCount:I

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;
    .locals 1

    invoke-virtual {p0}, Lo/Pitch$Cta;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lo/Pitch$Cta;

    invoke-direct {p1, v0}, Lo/Pitch$Cta;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    iget-object v0, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lo/Pitch$Cta;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Pitch$Cta;->modCount:I

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/LoanStatusResponse$Detail;->onMessageChannelReady()V

    iget-object v0, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lo/Pitch$Cta;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/Pitch$Cta;->modCount:I

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lo/Pitch$Cta;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
