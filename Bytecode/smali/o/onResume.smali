.class public final Lo/onResume;
.super Lo/getPhoneNumber;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onResume$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final extraCallback:[Ljava/lang/Integer;

.field private static final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:[Ljava/lang/Integer;

.field private static final onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Lo/onResume$onNavigationEvent;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

.field private asBinder:Z

.field private asInterface:Z

.field onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x4

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sput-object v0, Lo/onResume;->onNavigationEvent:[Ljava/lang/Integer;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    sget-object v3, Lo/onResume;->onNavigationEvent:[Ljava/lang/Integer;

    .line 41
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/onResume;->onMessageChannelReady:Ljava/util/Set;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v1, v0, v2

    const/16 v1, 0xb

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lo/onResume;->extraCallback:[Ljava/lang/Integer;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lo/onResume;->extraCallback:[Ljava/lang/Integer;

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/onResume;->onTransact:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;)V

    const-string p1, "Unknown"

    .line 46
    iput-object p1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    const/16 p1, 0x13

    .line 48
    iput p1, p0, Lo/onResume;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lo/onResume;->asBinder:Z

    .line 50
    iput-boolean p1, p0, Lo/onResume;->onRelationshipValidationResult:Z

    .line 51
    iput-boolean p1, p0, Lo/onResume;->asInterface:Z

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 1147
    new-instance p1, Lo/onResume$5;

    invoke-direct {p1, p0}, Lo/onResume$5;-><init>(Lo/onResume;)V

    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 1257
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Unknown"

    .line 46
    iput-object p1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    const/16 p1, 0x13

    .line 48
    iput p1, p0, Lo/onResume;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lo/onResume;->asBinder:Z

    .line 50
    iput-boolean p1, p0, Lo/onResume;->onRelationshipValidationResult:Z

    .line 51
    iput-boolean p1, p0, Lo/onResume;->asInterface:Z

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 2147
    new-instance p1, Lo/onResume$5;

    invoke-direct {p1, p0}, Lo/onResume$5;-><init>(Lo/onResume;)V

    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 2257
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "Unknown"

    .line 46
    iput-object p1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    const/16 p1, 0x13

    .line 48
    iput p1, p0, Lo/onResume;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lo/onResume;->asBinder:Z

    .line 50
    iput-boolean p1, p0, Lo/onResume;->onRelationshipValidationResult:Z

    .line 51
    iput-boolean p1, p0, Lo/onResume;->asInterface:Z

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 3147
    new-instance p1, Lo/onResume$5;

    invoke-direct {p1, p0}, Lo/onResume$5;-><init>(Lo/onResume;)V

    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub$Proxy:Landroid/text/TextWatcher;

    .line 3257
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/onResume;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lo/onResume;->asInterface:Z

    return p0
.end method

.method static synthetic ICustomTabsCallback(Lo/onResume;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/onResume;->onRelationshipValidationResult:Z

    return p1
.end method

.method static synthetic asInterface(Lo/onResume;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lo/onResume;->onRelationshipValidationResult:Z

    return p0
.end method

.method static synthetic extraCallback(Lo/onResume;)Lo/onResume$onNavigationEvent;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/onResume;->ICustomTabsCallback$Stub:Lo/onResume$onNavigationEvent;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/onResume;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lo/onResume;->asBinder:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/onResume;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/onResume;->asBinder:Z

    return p1
.end method

.method static synthetic onNavigationEvent(Ljava/lang/String;)I
    .locals 0

    .line 34
    invoke-static {p0}, Lo/onResume;->onPostMessage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/onResume;I)I
    .locals 0

    .line 34
    iput p1, p0, Lo/onResume;->ICustomTabsCallback:I

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/onResume;)Z
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo/onResume;->asInterface:Z

    return v0
.end method

.method private static onPostMessage(Ljava/lang/String;)I
    .locals 3

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x1eb5df

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7832c03d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DINERS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "AMEX"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/16 p0, 0x13

    return p0

    :cond_3
    const/16 p0, 0x10

    return p0

    :cond_4
    const/16 p0, 0x11

    return p0
.end method

.method static synthetic onPostMessage(Lo/onResume;)I
    .locals 0

    .line 34
    iget p0, p0, Lo/onResume;->ICustomTabsCallback:I

    return p0
.end method

.method static synthetic onPostMessage(Lo/onResume;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 4023
    invoke-static {p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 4261
    iget-object v1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4264
    iput-object p1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5016
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "DINERS"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :sswitch_1
    const-string v1, "AMERICAN_EXPRESS"

    goto :goto_0

    :sswitch_2
    const-string v1, "DINERSCLUBINTERNATIONAL"

    goto :goto_0

    :sswitch_3
    const-string v1, "Discover"

    goto :goto_0

    :sswitch_4
    const-string v1, "RUPAY"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_5
    const-string v1, "VISA"

    goto :goto_0

    :sswitch_6
    const-string v1, "AMEX"

    goto :goto_0

    :sswitch_7
    const-string v1, "MASTERCARD"

    goto :goto_0

    .line 4271
    :cond_0
    :goto_1
    iget p1, p0, Lo/onResume;->ICustomTabsCallback:I

    .line 4272
    iget-object v1, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    invoke-static {v1}, Lo/onResume;->onPostMessage(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/onResume;->ICustomTabsCallback:I

    if-eq p1, v1, :cond_1

    new-array p1, v0, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    .line 5104
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lo/onResume;->ICustomTabsCallback:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c9a6f8e -> :sswitch_7
        0x1eb5df -> :sswitch_6
        0x283441 -> :sswitch_5
        0x4ab5f65 -> :sswitch_4
        0x1422dc09 -> :sswitch_3
        0x4c03e2db -> :sswitch_2
        0x5a1ff631 -> :sswitch_1
        0x7832c03d -> :sswitch_0
    .end sparse-switch
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    .line 298
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 301
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "AMEX"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_4

    const-string v0, "DINERS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1

    shl-int/lit8 v3, v1, 0x2

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 332
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    aput-object v0, p1, v2

    move v2, v1

    move v0, v3

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    goto :goto_5

    :cond_4
    :goto_1
    const/4 p1, 0x3

    new-array v0, p1, [Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 310
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0xa

    if-le v3, v5, :cond_6

    .line 315
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v4, 0xa

    :cond_6
    :goto_3
    if-ge v2, p1, :cond_8

    .line 320
    aget-object v1, v0, v2

    if-nez v1, :cond_7

    .line 323
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    move-object p1, v0

    :goto_5
    return-object p1
.end method


# virtual methods
.method final onMessageChannelReady(III)I
    .locals 6

    .line 122
    iget-object v0, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    const-string v1, "AMEX"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/onResume;->onPostMessage:Ljava/lang/String;

    const-string v1, "DINERS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/onResume;->onMessageChannelReady:Ljava/util/Set;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lo/onResume;->onTransact:Ljava/util/Set;

    .line 126
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gt p2, v4, :cond_3

    add-int v4, p2, p3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-le v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/4 v4, 0x1

    if-nez p3, :cond_2

    .line 133
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    if-ne p2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr p2, p3

    add-int/2addr p2, v1

    if-eqz v2, :cond_5

    if-lez p2, :cond_5

    add-int/lit8 p2, p2, -0x1

    :cond_5
    if-gt p2, p1, :cond_6

    return p2

    :cond_6
    return p1
.end method

.method public final setCardNoListener(Lo/onResume$onNavigationEvent;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/onResume;->ICustomTabsCallback$Stub:Lo/onResume$onNavigationEvent;

    return-void
.end method
