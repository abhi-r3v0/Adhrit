.class final Lo/nativeGetDurationMs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final ICustomTabsCallback:I

.field private onNavigationEvent:I

.field private final synthetic onPostMessage:Lo/setTopInset;


# direct methods
.method constructor <init>(Lo/setTopInset;)V
    .locals 0

    iput-object p1, p0, Lo/nativeGetDurationMs;->onPostMessage:Lo/setTopInset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lo/nativeGetDurationMs;->onNavigationEvent:I

    iget-object p1, p0, Lo/nativeGetDurationMs;->onPostMessage:Lo/setTopInset;

    invoke-virtual {p1}, Lo/setTopInset;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/nativeGetDurationMs;->ICustomTabsCallback:I

    return-void
.end method

.method private final onNavigationEvent()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/nativeGetDurationMs;->onPostMessage:Lo/setTopInset;

    iget v1, p0, Lo/nativeGetDurationMs;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/nativeGetDurationMs;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Lo/setTopInset;->onPostMessage(I)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lo/nativeGetDurationMs;->onNavigationEvent:I

    iget v1, p0, Lo/nativeGetDurationMs;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lo/nativeGetDurationMs;->onNavigationEvent()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
