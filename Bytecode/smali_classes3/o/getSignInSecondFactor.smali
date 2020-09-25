.class public final Lo/getSignInSecondFactor;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/getSignInSecondFactor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lo/getSignInSecondFactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Lo/getSignInSecondFactor;-><init>()V

    iput p1, p0, Lo/getSignInSecondFactor;->onNavigationEvent:I

    iput-object p2, p0, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3000
    :cond_0
    instance-of v1, p1, Lo/getSignInSecondFactor;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lo/getSignInSecondFactor;

    iget v1, p0, Lo/getSignInSecondFactor;->onNavigationEvent:I

    .line 4000
    iget v3, p1, Lo/getSignInSecondFactor;->onNavigationEvent:I

    if-ne v1, v3, :cond_4

    .line 3000
    iget-object v1, p0, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5000
    iget-object v1, p1, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    .line 8000
    :cond_1
    iget-object v3, p1, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    .line 3000
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 6000
    iget-object p1, p1, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    .line 7000
    :cond_2
    iget-object p1, p1, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    .line 3000
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 9000
    iget v0, p0, Lo/getSignInSecondFactor;->onNavigationEvent:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 2000
    iget v0, p0, Lo/getSignInSecondFactor;->onNavigationEvent:I

    iget-object v1, p0, Lo/getSignInSecondFactor;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/getSignInSecondFactor;->extraCallback:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x44

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AssetPackLocation{packStorageMethod="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", assetsPath="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
