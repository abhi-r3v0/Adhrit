.class public final Lo/CrashlyticsReport$Session$Event$Application$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Builder;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 26
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Builder;->count:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExistenceFilter{count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Builder;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
