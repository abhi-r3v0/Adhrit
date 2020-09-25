.class public Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# static fields
.field private static final RESERVED_FIELD_DESIGNATOR:Ljava/lang/String; = "__"


# instance fields
.field private final accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

.field private final arrayElement:Z

.field private final path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Z)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    .line 223
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 224
    iput-boolean p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->arrayElement:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;ZLo/AutoValue_CrashlyticsReport_Session_Device$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Z)V

    return-void
.end method

.method private validatePath()V
    .locals 2

    .line 302
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Lo/setRamUsed;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 306
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->validatePathSegment(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validatePathSegment(Ljava/lang/String;)V
    .locals 2

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->isWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Document fields cannot begin and end with \"__\""

    .line 320
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "Document fields must not be empty"

    .line 314
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->addToFieldMask(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    return-void
.end method

.method public addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    invoke-virtual {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->addToFieldTransforms(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-void
.end method

.method public childContext(I)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;
    .locals 3

    .line 278
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Z)V

    return-object p1
.end method

.method public childContext(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;
    .locals 4

    .line 262
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 263
    :goto_0
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Z)V

    .line 264
    invoke-direct {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->validatePathSegment(Ljava/lang/String;)V

    return-object v1
.end method

.method public childContext(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;
    .locals 3

    .line 269
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 270
    :goto_0
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Z)V

    .line 271
    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->validatePath()V

    return-object v0
.end method

.method public createError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4

    .line 294
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/setRamUsed;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (found in field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 297
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid data. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getDataSource()Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    .locals 1

    .line 237
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->access$100(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;)Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 242
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->path:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object v0
.end method

.method public isArrayElement()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->arrayElement:Z

    return v0
.end method

.method public isWrite()Z
    .locals 4

    .line 247
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Device$1;->$SwitchMap$com$google$firebase$firestore$core$UserData$Source:[I

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->access$100(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;)Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;->accumulator:Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;

    .line 257
    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;->access$100(Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;)Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Unexpected case for UserDataSource: %s"

    .line 256
    invoke-static {v1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    return v1
.end method
