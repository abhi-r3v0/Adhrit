.class public Lo/setCollapsible;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private asBinder:I

.field public extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setDropdownParams;

.field public final onPostMessage:Ljava/net/URL;

.field public onRelationshipValidationResult:Ljava/net/URL;

.field private volatile onTransact:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-object v0, Lo/setDropdownParams;->extraCallback:Lo/setDropdownParams;

    invoke-direct {p0, p1, v0}, Lo/setCollapsible;-><init>(Ljava/lang/String;Lo/setDropdownParams;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lo/setDropdownParams;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lo/setCollapsible;->onPostMessage:Ljava/net/URL;

    .line 2036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iput-object p1, p0, Lo/setCollapsible;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 57
    check-cast p2, Lo/setDropdownParams;

    iput-object p2, p0, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    return-void

    .line 3029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2037
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 41
    sget-object v0, Lo/setDropdownParams;->extraCallback:Lo/setDropdownParams;

    invoke-direct {p0, p1, v0}, Lo/setCollapsible;-><init>(Ljava/net/URL;Lo/setDropdownParams;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lo/setDropdownParams;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    .line 49
    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lo/setCollapsible;->onPostMessage:Ljava/net/URL;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lo/setCollapsible;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 51
    check-cast p2, Lo/setDropdownParams;

    iput-object p2, p0, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    return-void

    .line 2029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lo/setCollapsible;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/setCollapsible;->onPostMessage:Ljava/net/URL;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4029
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 133
    instance-of v0, p1, Lo/setCollapsible;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lo/setCollapsible;

    .line 135
    invoke-direct {p0}, Lo/setCollapsible;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lo/setCollapsible;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    iget-object p1, p1, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 142
    iget v0, p0, Lo/setCollapsible;->asBinder:I

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lo/setCollapsible;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lo/setCollapsible;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v1, p0, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/setCollapsible;->asBinder:I

    .line 146
    :cond_0
    iget v0, p0, Lo/setCollapsible;->asBinder:I

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 2

    .line 4125
    iget-object v0, p0, Lo/setCollapsible;->onTransact:[B

    if-nez v0, :cond_0

    .line 4126
    invoke-direct {p0}, Lo/setCollapsible;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/setCollapsible;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lo/setCollapsible;->onTransact:[B

    .line 4128
    :cond_0
    iget-object v0, p0, Lo/setCollapsible;->onTransact:[B

    .line 121
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-direct {p0}, Lo/setCollapsible;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
