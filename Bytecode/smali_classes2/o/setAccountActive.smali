.class abstract Lo/setAccountActive;
.super Lo/bD;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/bD<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/CharSequence;

.field private extraCallback:I

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/bA;

.field private onPostMessage:I


# direct methods
.method protected constructor <init>(Lo/cb;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/bD;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo/setAccountActive;->extraCallback:I

    .line 3
    invoke-static {p1}, Lo/cb;->ICustomTabsCallback(Lo/cb;)Lo/bA;

    move-result-object v1

    iput-object v1, p0, Lo/setAccountActive;->onNavigationEvent:Lo/bA;

    .line 6
    iput-boolean v0, p0, Lo/setAccountActive;->onMessageChannelReady:Z

    .line 7
    invoke-static {p1}, Lo/cb;->extraCallback(Lo/cb;)I

    move-result p1

    iput p1, p0, Lo/setAccountActive;->onPostMessage:I

    .line 8
    iput-object p2, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method abstract onMessageChannelReady(I)I
.end method

.method abstract onNavigationEvent(I)I
.end method

.method protected final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 6

    .line 11
    iget v0, p0, Lo/setAccountActive;->extraCallback:I

    .line 12
    :cond_0
    :goto_0
    iget v1, p0, Lo/setAccountActive;->extraCallback:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 14
    invoke-virtual {p0, v1}, Lo/setAccountActive;->onNavigationEvent(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 16
    iget-object v1, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 17
    iput v2, p0, Lo/setAccountActive;->extraCallback:I

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0, v1}, Lo/setAccountActive;->onMessageChannelReady(I)I

    move-result v3

    iput v3, p0, Lo/setAccountActive;->extraCallback:I

    .line 20
    :goto_1
    iget v3, p0, Lo/setAccountActive;->extraCallback:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 21
    iput v3, p0, Lo/setAccountActive;->extraCallback:I

    .line 22
    iget-object v1, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    .line 23
    iput v2, p0, Lo/setAccountActive;->extraCallback:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 24
    iget-object v3, p0, Lo/setAccountActive;->onNavigationEvent:Lo/bA;

    iget-object v4, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lo/bA;->ICustomTabsCallback(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 26
    iget-object v3, p0, Lo/setAccountActive;->onNavigationEvent:Lo/bA;

    iget-object v4, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lo/bA;->ICustomTabsCallback(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 28
    :cond_4
    iget-boolean v3, p0, Lo/setAccountActive;->onMessageChannelReady:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 29
    iget v0, p0, Lo/setAccountActive;->extraCallback:I

    goto :goto_0

    .line 31
    :cond_5
    iget v3, p0, Lo/setAccountActive;->onPostMessage:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 32
    iget-object v1, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 33
    iput v2, p0, Lo/setAccountActive;->extraCallback:I

    :goto_4
    if-le v1, v0, :cond_7

    .line 34
    iget-object v2, p0, Lo/setAccountActive;->onNavigationEvent:Lo/bA;

    iget-object v3, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lo/bA;->ICustomTabsCallback(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v4

    .line 36
    iput v3, p0, Lo/setAccountActive;->onPostMessage:I

    .line 37
    :cond_7
    iget-object v2, p0, Lo/setAccountActive;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_8
    invoke-virtual {p0}, Lo/bD;->onPostMessage()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
