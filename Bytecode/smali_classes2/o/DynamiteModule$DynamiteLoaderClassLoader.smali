.class final enum Lo/DynamiteModule$DynamiteLoaderClassLoader;
.super Lo/DynamiteApi;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;I)V
    .locals 6

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lo/DynamiteApi;-><init>(Ljava/lang/String;ILo/DynamiteModule$LoadingException;ILo/getCredentialWithLink;)V

    return-void
.end method
