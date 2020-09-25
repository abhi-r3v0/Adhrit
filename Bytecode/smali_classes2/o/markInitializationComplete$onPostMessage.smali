.class Lo/markInitializationComplete$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/markInitializationComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final set:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/markInitializationComplete$onPostMessage;->anInterface:Ljava/lang/Class;

    .line 32
    iput-boolean p2, p0, Lo/markInitializationComplete$onPostMessage;->set:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;ZLo/markInitializationComplete$3;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lo/markInitializationComplete$onPostMessage;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$100(Lo/markInitializationComplete$onPostMessage;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lo/markInitializationComplete$onPostMessage;->set:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 37
    instance-of v0, p1, Lo/markInitializationComplete$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lo/markInitializationComplete$onPostMessage;

    .line 39
    iget-object v0, p1, Lo/markInitializationComplete$onPostMessage;->anInterface:Ljava/lang/Class;

    iget-object v2, p0, Lo/markInitializationComplete$onPostMessage;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lo/markInitializationComplete$onPostMessage;->set:Z

    iget-boolean v0, p0, Lo/markInitializationComplete$onPostMessage;->set:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 47
    iget-object v0, p0, Lo/markInitializationComplete$onPostMessage;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 49
    iget-boolean v1, p0, Lo/markInitializationComplete$onPostMessage;->set:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
