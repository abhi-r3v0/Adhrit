.class public final Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 398
    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 399
    iput-boolean p3, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onNavigationEvent:Z

    .line 400
    iput p4, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    const/4 p1, 0x5

    if-nez p2, :cond_0

    goto :goto_2

    .line 1417
    :cond_0
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "INT"

    .line 1418
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x3

    goto :goto_2

    :cond_1
    const-string p3, "CHAR"

    .line 1421
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "CLOB"

    .line 1422
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "TEXT"

    .line 1423
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "BLOB"

    .line 1426
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "REAL"

    .line 1429
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "FLOA"

    .line 1430
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "DOUB"

    .line 1431
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_0
    const/4 p1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 401
    :goto_2
    iput p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onMessageChannelReady:I

    .line 402
    iput-object p5, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    .line 403
    iput p6, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 444
    :cond_1
    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    .line 445
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 446
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    iget v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    if-eq v2, v3, :cond_5

    return v1

    .line 1481
    :cond_2
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2481
    :goto_0
    iget v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_5

    return v1

    .line 451
    :cond_5
    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 453
    :cond_6
    iget-boolean v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onNavigationEvent:Z

    iget-boolean v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onNavigationEvent:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 457
    :cond_7
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    const/4 v3, 0x2

    if-ne v2, v0, :cond_8

    iget v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v4, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    .line 459
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 461
    :cond_8
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v2, v3, :cond_9

    iget v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v2, v0, :cond_9

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 465
    :cond_9
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    if-eqz v2, :cond_b

    iget v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_a
    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_2
    return v1

    .line 472
    :cond_b
    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onMessageChannelReady:I

    iget p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onMessageChannelReady:I

    if-ne v2, p1, :cond_c

    return v0

    :cond_c
    :goto_3
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 486
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 487
    iget v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 488
    iget-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 489
    iget v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", affinity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", notNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onNavigationEvent:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", primaryKeyPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
