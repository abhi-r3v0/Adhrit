.class final Lo/access$lambda$3$extraCallback;
.super Lo/BinaryImagesConverter$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$lambda$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private tokenCreationTimestamp:Ljava/lang/Long;

.field private tokenExpirationTimestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/BinaryImagesConverter$extraCallback;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/BinaryImagesConverter;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lo/BinaryImagesConverter$extraCallback;-><init>()V

    .line 91
    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/access$lambda$3$extraCallback;->token:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getTokenExpirationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/access$lambda$3$extraCallback;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 93
    invoke-virtual {p1}, Lo/BinaryImagesConverter;->getTokenCreationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/access$lambda$3$extraCallback;->tokenCreationTimestamp:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lo/BinaryImagesConverter;Lo/access$lambda$3$5;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lo/access$lambda$3$extraCallback;-><init>(Lo/BinaryImagesConverter;)V

    return-void
.end method


# virtual methods
.method public final build()Lo/BinaryImagesConverter;
    .locals 9

    .line 116
    iget-object v0, p0, Lo/access$lambda$3$extraCallback;->token:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_0
    iget-object v0, p0, Lo/access$lambda$3$extraCallback;->tokenExpirationTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenExpirationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_1
    iget-object v0, p0, Lo/access$lambda$3$extraCallback;->tokenCreationTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenCreationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    new-instance v0, Lo/access$lambda$3;

    iget-object v3, p0, Lo/access$lambda$3$extraCallback;->token:Ljava/lang/String;

    iget-object v1, p0, Lo/access$lambda$3$extraCallback;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lo/access$lambda$3$extraCallback;->tokenCreationTimestamp:Ljava/lang/Long;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lo/access$lambda$3;-><init>(Ljava/lang/String;JJLo/access$lambda$3$5;)V

    return-object v0

    .line 126
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setToken(Ljava/lang/String;)Lo/BinaryImagesConverter$extraCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lo/access$lambda$3$extraCallback;->token:Ljava/lang/String;

    return-object p0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTokenCreationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;
    .locals 0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/access$lambda$3$extraCallback;->tokenCreationTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final setTokenExpirationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;
    .locals 0

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/access$lambda$3$extraCallback;->tokenExpirationTimestamp:Ljava/lang/Long;

    return-object p0
.end method
