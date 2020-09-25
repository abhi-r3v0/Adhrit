.class public interface abstract Lo/AppCompatImageHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/AppCompatImageHelper;->onNavigationEvent:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract onNavigationEvent(Ljava/security/MessageDigest;)V
.end method
