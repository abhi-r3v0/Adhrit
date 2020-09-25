.class final Lo/LoanStatusResponse_InputJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private extraCallback:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lo/LoanStatusResponse_InputDataJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lo/LoanStatusResponse_InputDataJsonAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback:Ljava/util/Map$Entry;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lo/LoanStatusResponse_IncorrectJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/LoanStatusResponse_InputJsonAdapter;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/LoanStatusResponse_InputDataJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_InputDataJsonAdapter;

    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lo/LoanStatusResponse_InputDataJsonAdapter;->extraCallback()Lo/LoanSummary$Details;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lo/LoanSummary$Details;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanStatusResponse_InputJsonAdapter;->extraCallback:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_InputDataJsonAdapter;

    check-cast p1, Lo/LoanSummary$Details;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->ICustomTabsCallback(Lo/LoanSummary$Details;)Lo/LoanSummary$Details;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
