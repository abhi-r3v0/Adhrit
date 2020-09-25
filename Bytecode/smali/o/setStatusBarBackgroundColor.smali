.class public final Lo/setStatusBarBackgroundColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/setStatusBarBackgroundColor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public ICustomTabsCallback$Stub:Z

.field asBinder:Lo/setMinHeight;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:I

.field public onNavigationEvent:Ljava/lang/reflect/Field;

.field public onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 180
    new-instance v0, Lo/setStatusBarBackgroundColor;

    invoke-direct {v0}, Lo/setStatusBarBackgroundColor;-><init>()V

    .line 181
    iget v1, p0, Lo/setStatusBarBackgroundColor;->onMessageChannelReady:I

    iput v1, v0, Lo/setStatusBarBackgroundColor;->onMessageChannelReady:I

    .line 182
    iget-object v1, p0, Lo/setStatusBarBackgroundColor;->onNavigationEvent:Ljava/lang/reflect/Field;

    iput-object v1, v0, Lo/setStatusBarBackgroundColor;->onNavigationEvent:Ljava/lang/reflect/Field;

    .line 183
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    .line 184
    iget v1, p0, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    iput v1, v0, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    .line 185
    iget-boolean v1, p0, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback:Z

    iput-boolean v1, v0, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback:Z

    .line 186
    iget v1, p0, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    iput v1, v0, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 187
    iget-object v1, p0, Lo/setStatusBarBackgroundColor;->asBinder:Lo/setMinHeight;

    iput-object v1, v0, Lo/setStatusBarBackgroundColor;->asBinder:Lo/setMinHeight;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 14
    check-cast p1, Lo/setStatusBarBackgroundColor;

    .line 2062
    iget v0, p0, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2103
    iget p1, p1, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    .line 2062
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 72
    instance-of v0, p1, Lo/setStatusBarBackgroundColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    check-cast p1, Lo/setStatusBarBackgroundColor;

    .line 1103
    iget p1, p1, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onMessageChannelReady(Lo/dispatchKeyShortcutEvent;)V
    .locals 5

    .line 168
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->onPostMessage()I

    move-result v0

    iput v0, p0, Lo/setStatusBarBackgroundColor;->onMessageChannelReady:I

    .line 169
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/setStatusBarBackgroundColor;->onRelationshipValidationResult:I

    .line 171
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->extraCallback()Z

    move-result v0

    iput-boolean v0, p0, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback:Z

    .line 172
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->ICustomTabsCallback()I

    move-result v0

    iput v0, p0, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 173
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->onTransact()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    invoke-interface {p1}, Lo/dispatchKeyShortcutEvent;->onTransact()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, " "

    const-string v1, ""

    .line 1179
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-array p1, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1185
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 1186
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    aput-byte v1, p1, v2

    move v1, v3

    move v2, v4

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p1}, Lo/setTag;->onMessageChannelReady([B)Lo/setMinHeight;

    move-result-object p1

    iput-object p1, p0, Lo/setStatusBarBackgroundColor;->asBinder:Lo/setMinHeight;

    goto :goto_1

    .line 1181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Hex binary needs to be even-length :"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
