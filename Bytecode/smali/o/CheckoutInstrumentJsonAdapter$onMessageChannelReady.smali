.class public Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CheckoutInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:I

.field private asBinder:F

.field private asInterface:I

.field private extraCallback:J

.field private onMessageChannelReady:Landroid/text/Layout$Alignment;

.field private onNavigationEvent:F

.field private onPostMessage:Landroid/text/SpannableStringBuilder;

.field private onRelationshipValidationResult:F

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent()V

    return-void
.end method

.method private ICustomTabsCallback()Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 4

    .line 157
    iget-object v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 158
    iput v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lo/CheckoutInstrumentJsonAdapter$5;->onNavigationEvent:[I

    iget-object v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized alignment: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebvttCueBuilder"

    invoke-static {v2, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    goto :goto_0

    .line 168
    :cond_1
    iput v3, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    goto :goto_0

    .line 165
    :cond_2
    iput v2, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    goto :goto_0

    .line 162
    :cond_3
    iput v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public ICustomTabsCallback(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 152
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:F

    return-object p0
.end method

.method public ICustomTabsCallback(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 147
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    return-object p0
.end method

.method public extraCallback(J)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 112
    iput-wide p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:J

    return-object p0
.end method

.method public extraCallback(Landroid/text/Layout$Alignment;)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 122
    iput-object p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public onMessageChannelReady(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 132
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onTransact:I

    return-object p0
.end method

.method public onMessageChannelReady(J)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 107
    iput-wide p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:J

    return-object p0
.end method

.method public onNavigationEvent(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 142
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asBinder:F

    return-object p0
.end method

.method public onNavigationEvent()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:J

    .line 85
    iput-wide v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:J

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage:Landroid/text/SpannableStringBuilder;

    .line 87
    iput-object v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent:F

    const/high16 v1, -0x80000000

    .line 89
    iput v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onTransact:I

    .line 90
    iput v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 91
    iput v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asBinder:F

    .line 92
    iput v1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    .line 93
    iput v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:F

    return-void
.end method

.method public onPostMessage(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 127
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent:F

    return-object p0
.end method

.method public onPostMessage(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 137
    iput p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return-object p0
.end method

.method public onPostMessage(Landroid/text/SpannableStringBuilder;)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public onPostMessage()Lo/CheckoutInstrumentJsonAdapter;
    .locals 15

    .line 99
    iget v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asBinder:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback()Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    .line 102
    :cond_0
    new-instance v0, Lo/CheckoutInstrumentJsonAdapter;

    iget-wide v3, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:J

    iget-wide v5, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:J

    iget-object v7, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Landroid/text/Layout$Alignment;

    iget v9, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent:F

    iget v10, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onTransact:I

    iget v11, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iget v12, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asBinder:F

    iget v13, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->asInterface:I

    iget v14, p0, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:F

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lo/CheckoutInstrumentJsonAdapter;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method
