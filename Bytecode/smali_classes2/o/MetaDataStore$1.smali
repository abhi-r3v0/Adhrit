.class public interface abstract Lo/MetaDataStore$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NONE:Lo/MetaDataStore$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/MetaDataStore$1$1;

    invoke-direct {v0}, Lo/MetaDataStore$1$1;-><init>()V

    sput-object v0, Lo/MetaDataStore$1;->NONE:Lo/MetaDataStore$1;

    return-void
.end method


# virtual methods
.method public abstract getMaxNumberOfQueriesToKeep()J
.end method

.method public abstract getPercentOfQueriesToPruneAtOnce()F
.end method

.method public abstract shouldCheckCacheSize(J)Z
.end method

.method public abstract shouldPrune(JJ)Z
.end method
