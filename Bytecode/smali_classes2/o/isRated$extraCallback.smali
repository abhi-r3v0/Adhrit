.class final Lo/isRated$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field static final extraCallback:[B


# instance fields
.field final ICustomTabsCallback:Ljava/lang/CharSequence;

.field asInterface:C

.field final onMessageChannelReady:I

.field final onNavigationEvent:Z

.field onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x700

    new-array v1, v0, [B

    .line 584
    sput-object v1, Lo/isRated$extraCallback;->extraCallback:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 586
    sget-object v2, Lo/isRated$extraCallback;->extraCallback:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lo/isRated$extraCallback;->onNavigationEvent:Z

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    return-void
.end method

.method private extraCallback()B
    .locals 4

    .line 901
    iget v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 902
    :cond_0
    :goto_0
    iget v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    const/16 v2, 0x3e

    if-lez v1, :cond_4

    .line 903
    iget-object v3, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1

    const/16 v0, 0xc

    return v0

    :cond_1
    if-eq v1, v2, :cond_4

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 913
    :cond_2
    iget-char v1, p0, Lo/isRated$extraCallback;->asInterface:C

    .line 914
    :cond_3
    iget v2, p0, Lo/isRated$extraCallback;->onPostMessage:I

    if-lez v2, :cond_0

    iget-object v3, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lo/isRated$extraCallback;->asInterface:C

    if-ne v2, v1, :cond_3

    goto :goto_0

    .line 918
    :cond_4
    iput v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 919
    iput-char v2, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v0, 0xd

    return v0
.end method

.method private onMessageChannelReady()B
    .locals 4

    .line 944
    iget v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 945
    :cond_0
    iget v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    const/16 v2, 0x3b

    if-lez v1, :cond_2

    .line 946
    iget-object v3, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1

    const/16 v0, 0xc

    return v0

    :cond_1
    if-ne v1, v2, :cond_0

    .line 954
    :cond_2
    iput v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 955
    iput-char v2, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v0, 0xd

    return v0
.end method


# virtual methods
.method ICustomTabsCallback()B
    .locals 3

    .line 846
    iget-object v0, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lo/isRated$extraCallback;->asInterface:C

    .line 847
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 849
    iget v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0

    .line 852
    :cond_0
    iget v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 853
    iget-char v0, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v1, 0x700

    if-ge v0, v1, :cond_1

    .line 1803
    sget-object v1, Lo/isRated$extraCallback;->extraCallback:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 854
    :goto_0
    iget-boolean v1, p0, Lo/isRated$extraCallback;->onNavigationEvent:Z

    if-eqz v1, :cond_3

    .line 856
    iget-char v1, p0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_2

    .line 857
    invoke-direct {p0}, Lo/isRated$extraCallback;->extraCallback()B

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    .line 859
    invoke-direct {p0}, Lo/isRated$extraCallback;->onMessageChannelReady()B

    move-result v0

    :cond_3
    :goto_1
    return v0
.end method
