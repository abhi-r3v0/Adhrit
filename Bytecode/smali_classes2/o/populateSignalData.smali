.class public Lo/populateSignalData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCurrentTimeMillis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCurrentTimeMillis<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lo/populateSignalData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/populateSignalData;

    invoke-direct {v0}, Lo/populateSignalData;-><init>()V

    sput-object v0, Lo/populateSignalData;->INSTANCE:Lo/populateSignalData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lo/populateSignalData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/populateSignalData<",
            "TK;TV;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lo/populateSignalData;->INSTANCE:Lo/populateSignalData;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lo/getCurrentTimeMillis$onMessageChannelReady;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeft()Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getMax()Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getMin()Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getRight()Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 38
    new-instance p3, Lo/CurrentTimeProvider;

    invoke-direct {p3, p1, p2}, Lo/CurrentTimeProvider;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public shortCircuitingInOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public shortCircuitingReverseOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
