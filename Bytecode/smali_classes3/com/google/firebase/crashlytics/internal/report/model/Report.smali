.class public interface abstract Lcom/google/firebase/crashlytics/internal/report/model/Report;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;
    }
.end annotation


# virtual methods
.method public abstract getCustomHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFiles()[Ljava/io/File;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;
.end method

.method public abstract remove()V
.end method
