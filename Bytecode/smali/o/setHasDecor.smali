.class public final Lo/setHasDecor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public extraCallback:Ljava/lang/Long;

.field public onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v1}, Lo/setHasDecor;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lo/setHasDecor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 55
    :cond_1
    check-cast p1, Lo/setHasDecor;

    .line 57
    iget-object v1, p0, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 58
    :cond_2
    iget-object v1, p0, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    iget-object p1, p1, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
