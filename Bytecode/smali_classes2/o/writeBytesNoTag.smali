.class public abstract enum Lo/writeBytesNoTag;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/writeUInt32NoTag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/writeBytesNoTag;",
        ">;",
        "Lo/writeUInt32NoTag;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/writeBytesNoTag;

.field private static enum ICustomTabsCallback$Stub:Lo/writeBytesNoTag;

.field private static enum extraCallback:Lo/writeBytesNoTag;

.field private static enum onMessageChannelReady:Lo/writeBytesNoTag;

.field private static enum onNavigationEvent:Lo/writeBytesNoTag;

.field public static final enum onPostMessage:Lo/writeBytesNoTag;

.field private static final synthetic onRelationshipValidationResult:[Lo/writeBytesNoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lo/writeBytesNoTag$4;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->onPostMessage:Lo/writeBytesNoTag;

    .line 53
    new-instance v0, Lo/writeBytesNoTag$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->onNavigationEvent:Lo/writeBytesNoTag;

    .line 72
    new-instance v0, Lo/writeBytesNoTag$1;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->onMessageChannelReady:Lo/writeBytesNoTag;

    .line 90
    new-instance v0, Lo/writeBytesNoTag$5;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->extraCallback:Lo/writeBytesNoTag;

    .line 113
    new-instance v0, Lo/writeBytesNoTag$3;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->ICustomTabsCallback:Lo/writeBytesNoTag;

    .line 136
    new-instance v0, Lo/writeBytesNoTag$10;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    invoke-direct {v0, v1}, Lo/writeBytesNoTag$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/writeBytesNoTag;->ICustomTabsCallback$Stub:Lo/writeBytesNoTag;

    const/4 v1, 0x6

    new-array v1, v1, [Lo/writeBytesNoTag;

    .line 31
    sget-object v2, Lo/writeBytesNoTag;->onPostMessage:Lo/writeBytesNoTag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/writeBytesNoTag;->onNavigationEvent:Lo/writeBytesNoTag;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/writeBytesNoTag;->onMessageChannelReady:Lo/writeBytesNoTag;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lo/writeBytesNoTag;->extraCallback:Lo/writeBytesNoTag;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lo/writeBytesNoTag;->ICustomTabsCallback:Lo/writeBytesNoTag;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lo/writeBytesNoTag;->onRelationshipValidationResult:[Lo/writeBytesNoTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/writeBytesNoTag;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v3, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    .line 171
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-nez v3, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/writeBytesNoTag;
    .locals 1

    .line 31
    const-class v0, Lo/writeBytesNoTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/writeBytesNoTag;

    return-object p0
.end method

.method public static values()[Lo/writeBytesNoTag;
    .locals 1

    .line 31
    sget-object v0, Lo/writeBytesNoTag;->onRelationshipValidationResult:[Lo/writeBytesNoTag;

    invoke-virtual {v0}, [Lo/writeBytesNoTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/writeBytesNoTag;

    return-object v0
.end method
