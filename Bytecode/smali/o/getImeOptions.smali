.class public Lo/getImeOptions;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:[D

.field private asBinder:I

.field private asInterface:D

.field private extraCallback:I

.field private onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:[D

.field private onRelationshipValidationResult:F

.field private onTransact:Lo/setOnSuggestionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lo/getImeOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getImeOptions;->onMessageChannelReady:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(II[DFI)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo/getImeOptions;->onPostMessage:[D

    const/16 v0, 0x14

    .line 25
    iput v0, p0, Lo/getImeOptions;->extraCallback:I

    const/4 v0, 0x6

    .line 26
    iput v0, p0, Lo/getImeOptions;->ICustomTabsCallback:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lo/getImeOptions;->asInterface:D

    .line 46
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/getImeOptions;->onTransact:Lo/setOnSuggestionListener;

    .line 47
    iput p2, p0, Lo/getImeOptions;->extraCallback:I

    .line 48
    iput p5, p0, Lo/getImeOptions;->ICustomTabsCallback:I

    .line 49
    iput-object p3, p0, Lo/getImeOptions;->onPostMessage:[D

    .line 50
    iput p1, p0, Lo/getImeOptions;->asBinder:I

    .line 52
    iput p4, p0, Lo/getImeOptions;->onRelationshipValidationResult:F

    int-to-float p3, p1

    div-float p3, p4, p3

    float-to-double v1, p3

    .line 53
    iput-wide v1, p0, Lo/getImeOptions;->asInterface:D

    .line 54
    sget-object p3, Lo/getImeOptions;->onMessageChannelReady:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "numBits:"

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " CarrierFreqs"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/getImeOptions;->onPostMessage:[D

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " FFTSize:"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " SR:"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", fftRatio = "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/getImeOptions;->asInterface:D

    invoke-virtual {p5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1029
    iget-boolean p4, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz p4, :cond_0

    .line 1030
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_0
    sget-object p3, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-static {p1, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->onPostMessage(II)[D

    move-result-object p2

    iput-object p2, p0, Lo/getImeOptions;->ICustomTabsCallback$Stub:[D

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_1

    .line 59
    iget-object p4, p0, Lo/getImeOptions;->ICustomTabsCallback$Stub:[D

    aget-wide v0, p4, p3

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    aput-wide v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 62
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lo/getImeOptions;->onPostMessage:[D

    array-length p3, p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/getImeOptions;->onNavigationEvent:Ljava/util/ArrayList;

    .line 64
    :goto_2
    iget-object p1, p0, Lo/getImeOptions;->onPostMessage:[D

    array-length p3, p1

    if-ge p2, p3, :cond_2

    .line 65
    aget-wide p3, p1, p2

    iget-wide v0, p0, Lo/getImeOptions;->asInterface:D

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 67
    iget-object p3, p0, Lo/getImeOptions;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
