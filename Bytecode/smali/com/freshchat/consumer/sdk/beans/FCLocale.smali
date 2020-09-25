.class public Lcom/freshchat/consumer/sdk/beans/FCLocale;
.super Ljava/lang/Object;


# instance fields
.field public country:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public displayCode:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public localeId:J

.field public region:Ljava/lang/String;

.field public script:Ljava/lang/String;

.field public variant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lo/writeStringNoTag;

    invoke-direct {v1}, Lo/writeStringNoTag;-><init>()V

    const-class v2, Lcom/freshchat/consumer/sdk/beans/FCLocale;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 1845
    :cond_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v1, v3, v2}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 1818
    :goto_0
    invoke-static {v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    return-wide v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayCode(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setLocaleId(J)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    return-object p0
.end method

.method public setVariant(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FCLocale{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "localeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->localeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", script=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->script:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", region=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", variant=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->variant:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extension=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->extension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", direction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/FCLocale;->direction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
