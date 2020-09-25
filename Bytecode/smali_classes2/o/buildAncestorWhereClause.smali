.class public final Lo/buildAncestorWhereClause;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final ICustomTabsCallback:J

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lo/buildAncestorWhereClause;->onPostMessage:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lo/buildAncestorWhereClause;->onNavigationEvent:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lo/buildAncestorWhereClause;->extraCallback:Ljava/lang/String;

    .line 72
    iput-wide p3, p0, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    return-void

    .line 4142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "typeName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/buildAncestorWhereClause;
    .locals 3

    .line 55
    new-instance v0, Lo/buildAncestorWhereClause;

    .line 3059
    sget-object v1, Lo/buildAncestorWhereClause;->onPostMessage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 55
    invoke-direct {v0, p0, p1, v1, v2}, Lo/buildAncestorWhereClause;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Lo/buildAncestorWhereClause;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lo/buildAncestorWhereClause;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1101
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2055
    :goto_0
    new-instance p0, Lo/buildAncestorWhereClause;

    .line 2059
    sget-object v1, Lo/buildAncestorWhereClause;->onPostMessage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 2055
    invoke-direct {p0, v0, p1, v1, v2}, Lo/buildAncestorWhereClause;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    .line 1910
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/buildAncestorWhereClause;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/buildAncestorWhereClause;->ICustomTabsCallback:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lo/buildAncestorWhereClause;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ": ("

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lo/buildAncestorWhereClause;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
