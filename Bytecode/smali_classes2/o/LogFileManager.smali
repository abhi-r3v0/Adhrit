.class public Lo/LogFileManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LogFileManager$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/LogFileManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INFO_CHILD_KEY:Lo/LogFileManager;

.field private static final MAX_KEY:Lo/LogFileManager;

.field private static final MIN_KEY:Lo/LogFileManager;

.field private static final PRIORITY_CHILD_KEY:Lo/LogFileManager;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lo/LogFileManager;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/LogFileManager;->MIN_KEY:Lo/LogFileManager;

    .line 25
    new-instance v0, Lo/LogFileManager;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/LogFileManager;->MAX_KEY:Lo/LogFileManager;

    .line 28
    new-instance v0, Lo/LogFileManager;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/LogFileManager;->PRIORITY_CHILD_KEY:Lo/LogFileManager;

    .line 29
    new-instance v0, Lo/LogFileManager;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/LogFileManager;->INFO_CHILD_KEY:Lo/LogFileManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lo/LogFileManager$3;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lo/LogFileManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lo/LogFileManager;
    .locals 2

    .line 112
    invoke-static {p0}, Lo/SessionReportingCoordinator$$Lambda$2;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lo/LogFileManager$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lo/LogFileManager$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v0, ".priority"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object p0, Lo/LogFileManager;->PRIORITY_CHILD_KEY:Lo/LogFileManager;

    return-object p0

    :cond_1
    const-string v0, "/"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 119
    new-instance v0, Lo/LogFileManager;

    invoke-direct {v0, p0}, Lo/LogFileManager;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInfoKey()Lo/LogFileManager;
    .locals 1

    .line 44
    sget-object v0, Lo/LogFileManager;->INFO_CHILD_KEY:Lo/LogFileManager;

    return-object v0
.end method

.method public static getMaxName()Lo/LogFileManager;
    .locals 1

    .line 36
    sget-object v0, Lo/LogFileManager;->MAX_KEY:Lo/LogFileManager;

    return-object v0
.end method

.method public static getMinName()Lo/LogFileManager;
    .locals 1

    .line 32
    sget-object v0, Lo/LogFileManager;->MIN_KEY:Lo/LogFileManager;

    return-object v0
.end method

.method public static getPriorityKey()Lo/LogFileManager;
    .locals 1

    .line 40
    sget-object v0, Lo/LogFileManager;->PRIORITY_CHILD_KEY:Lo/LogFileManager;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lo/LogFileManager;

    invoke-virtual {p0, p1}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/LogFileManager;)I
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    sget-object v0, Lo/LogFileManager;->MIN_KEY:Lo/LogFileManager;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_8

    sget-object v2, Lo/LogFileManager;->MAX_KEY:Lo/LogFileManager;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    if-ne p0, v2, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lo/LogFileManager;->isInt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p1}, Lo/LogFileManager;->isInt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {p0}, Lo/LogFileManager;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lo/LogFileManager;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->compareInts(II)I

    move-result v0

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Lo/SessionReportingCoordinator$$Lambda$2;->compareInts(II)I

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    return v1

    .line 82
    :cond_5
    invoke-virtual {p1}, Lo/LogFileManager;->isInt()Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 85
    :cond_6
    iget-object v0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    iget-object p1, p1, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v3

    :cond_8
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    instance-of v0, p1, Lo/LogFileManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_1
    check-cast p1, Lo/LogFileManager;

    .line 108
    iget-object v0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    iget-object p1, p1, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget-object v0, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isInt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPriorityChildName()Z
    .locals 1

    .line 56
    sget-object v0, Lo/LogFileManager;->PRIORITY_CHILD_KEY:Lo/LogFileManager;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChildKey(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/LogFileManager;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
