.class public final Lo/openDatabase;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/emptyMap;

.field public final onNavigationEvent:Lo/setTransactionSuccessful;


# direct methods
.method public constructor <init>(Lo/setTransactionSuccessful;Lo/emptyMap;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 94
    check-cast p1, Lo/setTransactionSuccessful;

    iput-object p1, p0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eqz p2, :cond_0

    .line 95
    check-cast p2, Lo/emptyMap;

    iput-object p2, p0, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "status is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "state is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;
    .locals 2

    .line 40
    sget-object v0, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lo/openDatabase;

    sget-object v1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-direct {v0, p0, v1}, Lo/openDatabase;-><init>(Lo/setTransactionSuccessful;Lo/emptyMap;)V

    return-object v0

    .line 1142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    instance-of v0, p1, Lo/openDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    check-cast p1, Lo/openDatabase;

    .line 77
    iget-object v0, p0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    iget-object v2, p1, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    iget-object p1, p1, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    .line 1516
    sget-object v1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
