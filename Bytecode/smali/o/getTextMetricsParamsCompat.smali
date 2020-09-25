.class public final Lo/getTextMetricsParamsCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private asBinder:I

.field private final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatRadioButton<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:I

.field private final onMessageChannelReady:I

.field private final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/AppCompatImageHelper;

.field private final onTransact:Lo/applyFrameworkTintUsingColorFilter;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/AppCompatImageHelper;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lo/applyFrameworkTintUsingColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/AppCompatImageHelper;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatRadioButton<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_5

    .line 32
    iput-object p1, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 33
    check-cast p2, Lo/AppCompatImageHelper;

    iput-object p2, p0, Lo/getTextMetricsParamsCompat;->onRelationshipValidationResult:Lo/AppCompatImageHelper;

    .line 34
    iput p3, p0, Lo/getTextMetricsParamsCompat;->onMessageChannelReady:I

    .line 35
    iput p4, p0, Lo/getTextMetricsParamsCompat;->extraCallback:I

    if-eqz p5, :cond_3

    .line 36
    check-cast p5, Ljava/util/Map;

    iput-object p5, p0, Lo/getTextMetricsParamsCompat;->asInterface:Ljava/util/Map;

    if-eqz p6, :cond_2

    .line 38
    check-cast p6, Ljava/lang/Class;

    iput-object p6, p0, Lo/getTextMetricsParamsCompat;->onPostMessage:Ljava/lang/Class;

    if-eqz p7, :cond_1

    .line 40
    check-cast p7, Ljava/lang/Class;

    iput-object p7, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    if-eqz p8, :cond_0

    .line 41
    check-cast p8, Lo/applyFrameworkTintUsingColorFilter;

    iput-object p8, p0, Lo/getTextMetricsParamsCompat;->onTransact:Lo/applyFrameworkTintUsingColorFilter;

    return-void

    .line 6029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Transcode class must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Resource class must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2029
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Signature must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lo/getTextMetricsParamsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lo/getTextMetricsParamsCompat;

    .line 48
    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v2, p1, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->onRelationshipValidationResult:Lo/AppCompatImageHelper;

    iget-object v2, p1, Lo/getTextMetricsParamsCompat;->onRelationshipValidationResult:Lo/AppCompatImageHelper;

    .line 49
    invoke-interface {v0, v2}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/getTextMetricsParamsCompat;->extraCallback:I

    iget v2, p1, Lo/getTextMetricsParamsCompat;->extraCallback:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/getTextMetricsParamsCompat;->onMessageChannelReady:I

    iget v2, p1, Lo/getTextMetricsParamsCompat;->onMessageChannelReady:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->asInterface:Ljava/util/Map;

    iget-object v2, p1, Lo/getTextMetricsParamsCompat;->asInterface:Ljava/util/Map;

    .line 52
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->onPostMessage:Ljava/lang/Class;

    iget-object v2, p1, Lo/getTextMetricsParamsCompat;->onPostMessage:Ljava/lang/Class;

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    iget-object v2, p1, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->onTransact:Lo/applyFrameworkTintUsingColorFilter;

    iget-object p1, p1, Lo/getTextMetricsParamsCompat;->onTransact:Lo/applyFrameworkTintUsingColorFilter;

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 62
    iget v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onRelationshipValidationResult:Lo/AppCompatImageHelper;

    invoke-interface {v1}, Lo/AppCompatImageHelper;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v1, p0, Lo/getTextMetricsParamsCompat;->onMessageChannelReady:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget v1, p0, Lo/getTextMetricsParamsCompat;->extraCallback:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->asInterface:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onTransact:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    .line 72
    :cond_0
    iget v0, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 0

    .line 101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineKey{model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getTextMetricsParamsCompat;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getTextMetricsParamsCompat;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->ICustomTabsCallback$Stub:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onRelationshipValidationResult:Lo/AppCompatImageHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getTextMetricsParamsCompat;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->asInterface:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getTextMetricsParamsCompat;->onTransact:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
